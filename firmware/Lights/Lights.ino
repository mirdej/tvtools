#define VERSION "2022-05-02"

//----------------------------------------------------------------------------------------
//
//  LIGHTS - SchulTV - Light Control by [ a n y m a ]
//                                          
//          Target MCU: DOIT ESP32 DEVKIT V1
//          Copyright:  2020 Michael Egger, me@anyma.ch
//          License:        This is FREE software (as in free speech, not necessarily free beer)
//                                  published under gnu GPL v.3
//
//----------------------------------------------------------------------------------------
#include <Preferences.h>
#include "Timer.h"
#include <SPI.h>
#include "Password.h"
#include "WiFi.h"
#include <ESPmDNS.h>
#include <LittleFS.h>
#include "ESPAsyncWebServer.h"
#include <AsyncElegantOTA.h>

//#define DMX_SIZE              513

#include "Fixture.h"
#include "Parled.h"
//#include <LXESP32DMX.h>
#include <esp_dmx.h> 
//https://github.com/someweisguy/esp_dmx

#include "Easing.h"


#include <FastLED.h>
#include <AsyncElegantOTA.h>

// ..................................................................................... PIN mapping

const int DMX_SERIAL_OUTPUT_PIN = 17;
const int NUM_PIXELS    =   26;

// ..................................................................................... Constants


// ..................................................................................... WIFI STUFF 
#define WIFI_TIMEOUT		4000
String 	hostname;

#define NUM_FIXT 12
#define NUM_PARLED 6

//========================================================================================
//----------------------------------------------------------------------------------------
//																				GLOBALS
Preferences                             preferences;
Timer                                   t;
AsyncWebServer                          server(80);
AsyncWebSocket                          ws("/ws");


const int transmitPin = 17;
const int receivePin = 16;
const int enablePin = 21;
const dmx_port_t dmxPort = 2;
TaskHandle_t dmx_task;

uint8_t dmx_data[513];




Fixture f[NUM_FIXT];
Parled p[NUM_PARLED];

CRGB                        pixel[1];

bool checking_fixtures;

//========================================================================================
//----------------------------------------------------------------------------------------

void update() {
    if (checking_fixtures) return;
    for (int i = 0; i < NUM_FIXT; i++) {
        f[i].update();
    }
    for (int i = 0; i < NUM_PARLED; i++) {
        p[i].update();
    }
 //   Serial.println();
}



//----------------------------------------------------------------------------------------
//																process webpage template

// Replaces placeholders
String processor(const String& var){
  if(var == "HOSTNAME"){
        return hostname;
    }

  return String();
}

//----------------------------------------------------------------------------------------
//																Websocket

void handleWebSocketMessage(void *arg, uint8_t *data, size_t len) {
    AwsFrameInfo *info = (AwsFrameInfo*)arg;
    if (info->final && info->index == 0 && info->len == len && info->opcode == WS_TEXT) {
        data[len] = 0;
        if (strcmp((char*)data, "toggle") == 0) {
/*            ledState = !ledState;
            notifyClients();*/
        }
    }
}


void onEvent(AsyncWebSocket *server, AsyncWebSocketClient *client, AwsEventType type,
                         void *arg, uint8_t *data, size_t len) {
    switch (type) {
        case WS_EVT_CONNECT:
            Serial.printf("WebSocket client #%u connected from %s\n", client->id(), client->remoteIP().toString().c_str());
            break;
        case WS_EVT_DISCONNECT:
            Serial.printf("WebSocket client #%u disconnected\n", client->id());
            break;
        case WS_EVT_DATA:
            handleWebSocketMessage(arg, data, len);
            break;
        case WS_EVT_PONG:
        case WS_EVT_ERROR:
            break;
    }
}


void initWebSocket() {
    ws.onEvent(onEvent);
    server.addHandler(&ws);
}


//----------------------------------------------------------------------------------------
//																File functions

void listDir(fs::FS &fs, const char * dirname, uint8_t levels){
    Serial.printf("Listing directory: %s\r\n", dirname);

    File root = fs.open(dirname);
    if(!root){
        Serial.println("- failed to open directory");
        return;
    }
    if(!root.isDirectory()){
        Serial.println(" - not a directory");
        return;
    }

    File file = root.openNextFile();
    while(file){
        if(file.isDirectory()){
            Serial.print("  DIR : ");
            Serial.println(file.name());
            if(levels){
                listDir(fs, file.name(), levels -1);
            }
        } else {
            Serial.print("  FILE: ");
            Serial.print(file.name());
            Serial.print("\tSIZE: ");
            Serial.println(file.size());
        }
        file = root.openNextFile();
    }
}



String cuelist(const char * dirname){
    Serial.printf("Listing directory: %s\r\n", dirname);

    String reply;
    
    File root = LittleFS.open(dirname);
    if(!root){
        Serial.println("- failed to open directory");
        return "Empty";
    }
    if(!root.isDirectory()){
        Serial.println(" - not a directory");
        return "Error";
    }

    File file = root.openNextFile();
    while(file){
        if(!file.isDirectory()){
            if (reply != "") reply = reply+",";
            reply = reply + file.name();
            Serial.println(reply);
        }
        file = root.openNextFile();
    }

    return reply;
}

void readFile(fs::FS &fs, const char * path){
    Serial.printf("Reading file: %s\r\n", path);

    File file = fs.open(path);
    if(!file || file.isDirectory()){
        Serial.println("- failed to open file for reading");
        return;
    }

    Serial.println(path);
    while(file.available()){
        Serial.write(file.read());
    }
    file.close();
}

void writeFile(fs::FS &fs, const char * path, const char * message){
    Serial.printf("Writing file: %s\r\n", path);

    File file = fs.open(path, FILE_WRITE);
    if(!file){
        Serial.println("- failed to open file for writing");
        return;
    }
    if(file.print(message)){
        Serial.println("- file written");
    } else {
        Serial.println("- write failed");
    }
    file.close();
}

void appendFile(fs::FS &fs, const char * path, const char * message){
    Serial.printf("Appending to file: %s\r\n", path);

    File file = fs.open(path, FILE_APPEND);
    if(!file){
        Serial.println("- failed to open file for appending");
        return;
    }
    if(file.print(message)){
        Serial.println("- message appended");
    } else {
        Serial.println("- append failed");
    }
    file.close();
}

void renameFile(fs::FS &fs, const char * path1, const char * path2){
    Serial.printf("Renaming file %s to %s\r\n", path1, path2);
    if (fs.rename(path1, path2)) {
        Serial.println("- file renamed");
    } else {
        Serial.println("- rename failed");
    }
}

void deleteFile(fs::FS &fs, const char * path){
    Serial.printf("Deleting file: %s\r\n", path);
    if(fs.remove(path)){
        Serial.println("- file deleted");
    } else {
        Serial.println("- delete failed");
    }
}

void testFileIO(fs::FS &fs, const char * path){
    Serial.printf("Testing file I/O with %s\r\n", path);

    static uint8_t buf[512];
    size_t len = 0;
    File file = fs.open(path, FILE_WRITE);
    if(!file){
        Serial.println("- failed to open file for writing");
        return;
    }

    size_t i;
    Serial.print("- writing" );
    uint32_t start = millis();
    for(i=0; i<2048; i++){
        if ((i & 0x001F) == 0x001F){
          Serial.print(".");
        }
        file.write(buf, 512);
    }
    Serial.println("");
    uint32_t end = millis() - start;
    Serial.printf(" - %u bytes written in %u ms\r\n", 2048 * 512, end);
    file.close();

    file = fs.open(path);
    start = millis();
    end = start;
    i = 0;
    if(file && !file.isDirectory()){
        len = file.size();
        size_t flen = len;
        start = millis();
        Serial.print("- reading" );
        while(len){
            size_t toRead = len;
            if(toRead > 512){
                toRead = 512;
            }
            file.read(buf, toRead);
            if ((i++ & 0x001F) == 0x001F){
              Serial.print(".");
            }
            len -= toRead;
        }
        Serial.println("");
        end = millis() - start;
        Serial.printf("- %u bytes read in %u ms\r\n", flen, end);
        file.close();
    } else {
        Serial.println("- failed to open file for reading");
    }
}

// ==== Handle invalid URL requests ============================================
void handleNotFound(AsyncWebServerRequest *request) {
    String logmessage = "Client:" + request->client()->remoteIP().toString() + " " + request->url();
    Serial.println(logmessage);
    request->send(404, "text/plain", "Not found");
}

//----------------------------------------------------------------------------------------

void  send_dmx_task( void * pvParameters ) {
    while(1) {

        
        update();

        dmx_write_packet(dmxPort, dmx_data, DMX_MAX_PACKET_SIZE);
        dmx_send_packet(dmxPort, DMX_MAX_PACKET_SIZE);
        dmx_wait_send_done(dmxPort, DMX_PACKET_TIMEOUT_TICK);
    }
}

void clearSlots(){
    for (int i = 0; i < 513; i++) {
        dmx_data[i] = 0;
    }
}

//----------------------------------------------------------------------------------------

void setup_dmx() {

    dmx_config_t dmxConfig = DMX_DEFAULT_CONFIG;
    dmx_param_config(dmxPort, &dmxConfig);
    dmx_set_pin(dmxPort, transmitPin, receivePin, enablePin);
    int queueSize = 0;
    int interruptPriority = 1;
    dmx_driver_install(dmxPort, DMX_MAX_PACKET_SIZE, queueSize, NULL,
                     interruptPriority);
    dmx_set_mode(dmxPort, DMX_MODE_WRITE);
    dmx_data[0] = 0;

    BaseType_t xReturned;
	
  	xReturned = xTaskCreatePinnedToCore(
                    send_dmx_task,      // Function that implements the task. 
                    "DMX-Out",          // Text name for the task. 
                    8192,               // Stack size in words, not bytes. 
                    NULL,               // Parameter passed into the task. 
                    0,   // Priority at which the task is created. 
                    &dmx_task,
                    0                   //Core where the task should run 
    );

    if( xReturned != pdPASS ) {
        dmx_task = NULL;				// task create failed
    }

}



//========================================================================================
//----------------------------------------------------------------------------------------
//																				SETUP

void setup(){
    Serial.begin(115200);
 Serial.println("Setup");
 
 	FastLED.addLeds<SK6812, 18, GRB>(pixel, 1);
	FastLED.setBrightness(20);

	for (int hue = 0; hue < 360; hue++) {
    	fill_rainbow( pixel, 1, hue, 7);
	    delay(3);
    	FastLED.show(); 
  	}


    for (int i = 0; i < NUM_FIXT; i++) {
        f[i].setAddress(i+1);
    }
    f[11].setAddress(16);

    for (int i = 0; i < NUM_PARLED; i++) {
        p[i].setAddress(3*i+24);
    }

 Serial.println("Mounting Filesystem");
    if(!LittleFS.begin()){
         Serial.println("An Error has occurred while mounting LittleFS");
         return;
    }
    
    listDir(LittleFS, "/", 0);
//     writeFile(LittleFS, "/test.txt", "Hello \n");

 
    preferences.begin("lights", false);
    pixel[0] = CRGB::Red;
    FastLED.show();

    hostname = "lights"; 
     Serial.println("Looking for Network");

    WiFi.begin(ssid, pwd);
    long start_time = millis();
    while (WiFi.status() != WL_CONNECTED) { 
        Serial.print("."); 
        delay(500); 
        if ((millis()-start_time) > WIFI_TIMEOUT) break;
	}

 
  	if (WiFi.status() == WL_CONNECTED) {
  	    Serial.print("Wifi connected. IP: ");
        Serial.println(WiFi.localIP());

        if (!MDNS.begin(hostname.c_str())) {
             Serial.println("Error setting up MDNS responder!");
        }
        Serial.println("mDNS responder started");

        server.on("/", HTTP_GET, [](AsyncWebServerRequest *request){
            request->send(LittleFS, "/index.html",  String(), false, processor);
        });

        server.on("/colors", HTTP_GET, [](AsyncWebServerRequest *request){
            request->send(LittleFS, "/colors.html",  String(), false, processor);
        });

        server.on("/fixtures", HTTP_GET, [](AsyncWebServerRequest *request){
            request->send(LittleFS, "/fixtures.html",  String(), false, processor);
        });

        server.on("/levels", HTTP_GET, [](AsyncWebServerRequest *request){
            request->send(LittleFS, "/levels.html",  String(), false, processor);
        });

        server.on("/src/bootstrap.bundle.min.js", HTTP_GET, [](AsyncWebServerRequest *request){
            request->send(LittleFS, "/src/bootstrap.bundle.min.js", "text/javascript");
        });
 
        server.on("/src/jquery-3.4.1.min.js", HTTP_GET, [](AsyncWebServerRequest *request){
            request->send(LittleFS, "/src/jquery-3.4.1.min.js", "text/javascript");
        });
 
        server.on("/src/bootstrap.min.css", HTTP_GET, [](AsyncWebServerRequest *request){
            request->send(LittleFS, "/src/bootstrap.min.css", "text/css");
        });

        server.on("/src/jquery-ui.min.js", HTTP_GET, [](AsyncWebServerRequest *request){
            request->send(LittleFS, "/src/jquery-ui.min.js", "text/javascript");
        });

        server.on("/src/jquery-ui.min.css", HTTP_GET, [](AsyncWebServerRequest *request){
            request->send(LittleFS, "/src/jquery-ui.min.css", "text/css");
        });
        
        server.on("/set", HTTP_GET, [] (AsyncWebServerRequest *request) {
            String inputMessage;
            
        	if (request->hasParam("channel")) {
                    checking_fixtures = false;

                    int chann;
                	inputMessage = request->getParam("channel")->value();
                    chann = inputMessage.toInt();
        	        if (request->hasParam("value")) {
                    	inputMessage = request->getParam("value")->value();
                       // ESP32DMX.setSlot(chann, inputMessage.toInt());	
                        f[chann % NUM_FIXT].startFade(inputMessage.toFloat()/255., 0.);
                       
                    }
                    request->send(200, "text/text", "check");
            }
            
            if (request->hasParam("master")) {
                inputMessage = request->getParam("master")->value();
                float level = inputMessage.toFloat()/255.;
                if (level < 0) level = 0;
                if (level > 1) level = 1;
                Serial.println(level);
                for (int i = 0; i < NUM_FIXT; i++) {
                    f[i].setMaster(level);
                }
                request->send(200, "text/text", inputMessage);
            }

          if (request->hasParam("colormaster")) {
                inputMessage = request->getParam("colormaster")->value();
                float level = inputMessage.toFloat()/255.;
                if (level < 0) level = 0;
                if (level > 1) level = 1;
                for (int i = 0; i < NUM_PARLED; i++) {
                    p[i].setMaster(level);
                }
                request->send(200, "text/text", inputMessage);
            }

       	if (request->hasParam("parled")) {
                    checking_fixtures = false;

                    int chann;
                	inputMessage = request->getParam("parled")->value();
                    chann = inputMessage.toInt() % NUM_PARLED;
                    
                    float r,g, b;
        	        if (request->hasParam("r")) {
                    	inputMessage = request->getParam("r")->value();
                           r =inputMessage.toFloat()/255.;                       
                    }
        	        if (request->hasParam("g")) {
                    	inputMessage = request->getParam("g")->value();
                           g =inputMessage.toFloat()/255.;                       
                    }
        	        if (request->hasParam("b")) {
                    	inputMessage = request->getParam("b")->value();
                           b =inputMessage.toFloat()/255.;                       
                    }
                    p[chann].startFade(r,g,b, 0.);
                    request->send(200, "text/text", "check");
            }

        });
        server.on("/getcameo", HTTP_GET, [] (AsyncWebServerRequest *request) {
                    request->send(200, "text/text", cuelist("/cameo"));

        });
  

    server.on("/delete", HTTP_GET, [] (AsyncWebServerRequest *request) {
                   String inputMessage;
                 if (request->hasParam("file")) {
                	inputMessage = request->getParam("file")->value();
                	inputMessage = "/cameo/"+inputMessage;

                    if(LittleFS.remove(inputMessage)){
                        Serial.println("- file deleted");
                    } else {
                        Serial.println("- delete failed");
                    }
                    request->send(200, "text/text", cuelist("/cameo"));
                }
        });

  
        server.on("/recall", HTTP_GET, [] (AsyncWebServerRequest *request) {
                    checking_fixtures=false;
                   
                   String inputMessage;
                 if (request->hasParam("file")) {
                	inputMessage = request->getParam("file")->value();
                    inputMessage = "/cameo/"+inputMessage;



                    File file = LittleFS.open(inputMessage.c_str());
                    if(!file || file.isDirectory()){
                        Serial.println("- failed to open file for reading");
                        return;
                    }
                        String reply;
                    
                    float speed = .4;
                  if (request->hasParam("speed")) {
                        inputMessage = request->getParam("speed")->value();
                         speed = inputMessage.toFloat();
                  }
                         Serial.printf("Speed: %f\n",speed);
                    
                     Serial.println(file.name());
                      while(file.available()){
                          String s=file.readStringUntil(',');
                            int idx = s.toInt();
                            Serial.print(idx);
                            Serial.print(",");
                            if (idx >= 0 && idx < NUM_FIXT) {
                                f[idx].setFadeTime(speed);
                                if (reply != "") reply = reply + ',';
                                reply = reply  + f[idx].parse(file);
                            }
                     }
                     file.close();

//readFile(LittleFS, inputMessage.c_str());



                    request->send(200, "text/text",reply);
                }
        });

        server.on("/save", HTTP_GET, [] (AsyncWebServerRequest *request) {
            String inputMessage;
            
        	if (request->hasParam("file")) {
                	inputMessage = request->getParam("file")->value();
                	inputMessage = "/cameo/"+inputMessage;
                    File file = LittleFS.open(inputMessage.c_str(), FILE_WRITE);
                	
                    if(!file){
                        Serial.println("- failed to open file for writing");
                        return;
                    }
    
      
                    for (int i = 0; i < NUM_FIXT; i++) {
                            file.print(i);
                            file.print(",");
                            f[i].dump(file);
                            file.print("\n");
                    }
                    file.close();


                    request->send(200, "text/text", "check");
            }

        });

        server.on("/savepar", HTTP_GET, [] (AsyncWebServerRequest *request) {
            String inputMessage;
            
        	if (request->hasParam("file")) {
                	inputMessage = request->getParam("file")->value();
                	inputMessage = "/parled/"+inputMessage;
                    File file = LittleFS.open(inputMessage.c_str(), FILE_WRITE);
                	
                    if(!file){
                        Serial.println("- failed to open file for writing");
                        return;
                    }
    
      
                    for (int i = 0; i < NUM_PARLED; i++) {
                            file.print(i);
                            file.print(",");
                            p[i].dump(file);
                            file.print("\n");
                    }
                    file.close();


                    request->send(200, "text/text", "check");
            }

        });

        server.on("/recallpar", HTTP_GET, [] (AsyncWebServerRequest *request) {
                    checking_fixtures=false;
                   
                   String inputMessage;
                 if (request->hasParam("file")) {
                	inputMessage = request->getParam("file")->value();
                    inputMessage = "/parled/"+inputMessage;



                    File file = LittleFS.open(inputMessage.c_str());
                    if(!file || file.isDirectory()){
                        Serial.println("- failed to open file for reading");
                        return;
                    }
                        String reply;
                    
                    float speed = .4;
                  if (request->hasParam("speed")) {
                        inputMessage = request->getParam("speed")->value();
                         speed = inputMessage.toFloat();
                  }
                         Serial.printf("Speed: %f\n",speed);
                    
                     Serial.println(file.name());
                      while(file.available()){
                          String s=file.readStringUntil(',');
                            int idx = s.toInt();
                            Serial.print(idx);
                            Serial.print(",");
                            if (idx >= 0 && idx < NUM_PARLED) {
                                p[idx].setFadeTime(speed);
                                if (reply != "") reply = reply + '|';
                                reply = reply  + p[idx].parse(file);
                            }
                     }
                     file.close();

//readFile(LittleFS, inputMessage.c_str());



                    request->send(200, "text/text",reply);
                }
        });

       server.on("/check", HTTP_GET, [] (AsyncWebServerRequest *request) {
            String inputMessage;
            
        	if (request->hasParam("fixture")) {
            	    checking_fixtures = true;
                    int fixt;
                	inputMessage = request->getParam("fixture")->value();
                    clearSlots();

                	if (inputMessage == "Stage ON") {
                        for (int i = 1; i < 22; i++) {
                            dmx_data[i] = 255;	
                        }
                  	} else if (inputMessage == "Backdrop ON") {
                          for (int i = 0; i < 6; i++) {
                            dmx_data[24 + (3*i)] = 255;	
                        }
                	} else if (inputMessage == "All ON") {
                        for (int i = 1; i < 22; i++) {
                            dmx_data[i] =  255;	
                        }
                        for (int i = 0; i < 6; i++) {
                            dmx_data[24+ (3*i)] = 255;	
                        }
                    } else if (inputMessage == "All OFF") {
                       clearSlots();
          	        } else {
                        fixt = inputMessage.toInt();
                        clearSlots();
                        dmx_data[fixt] =  255;	
                        if (fixt==11 || fixt== 16){
                            Serial.println("Color Cameo");
                           dmx_data[fixt + 1] =  255;	
                           dmx_data[fixt + 2] =  255;	
                           dmx_data[fixt + 3] =  127;	
                           dmx_data[fixt + 4] =  255;	
                        }
                	}
                    request->send(200, "text/text", "check");
            }

        });

      server.onNotFound(handleNotFound);

        pixel[0] = CRGB::Green;
        FastLED.show();
        AsyncElegantOTA.begin(&server);

        server.begin();
    }
    
    setup_dmx();
    dmx_data[11 + 2] =  255;	
    dmx_data[11 + 3] =  240;	
    dmx_data[11 + 4] =  255;	
    dmx_data[16 + 2] =  255;	
    dmx_data[16 + 3] =  240;	
    dmx_data[16 + 4] =  255;	


  /*  
    ESP32DMX.startOutput(DMX_SERIAL_OUTPUT_PIN);
    
    
                          ESP32DMX.setSlot(11 + 2, 255);	
                            ESP32DMX.setSlot(11 + 3, 240);	
                            ESP32DMX.setSlot(11 + 4, 255);	

                        ESP32DMX.setSlot(16 + 2, 255);	
                            ESP32DMX.setSlot(16 + 3, 240);	
                            ESP32DMX.setSlot(16 + 4, 255);	
*/

  //  test();
  //  t.every(20, update);
    //t.after(6000, test);
    //t.every(4000,test);
}



//========================================================================================
//----------------------------------------------------------------------------------------
//																				loop
 
void loop(){
    ws.cleanupClients();
    t.update();
}