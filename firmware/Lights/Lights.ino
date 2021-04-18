#define VERSION "2020-01-08"

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
#include <SPIFFS.h>
#include "ESPAsyncWebServer.h"
#include "Fixture.h"
#include <LXESP32DMX.h>
#include "Easing.h"

// ..................................................................................... PIN mapping

const int DMX_SERIAL_OUTPUT_PIN = 17;
const int NUM_PIXELS    =   26;

// ..................................................................................... Constants


// ..................................................................................... WIFI STUFF 
#define WIFI_TIMEOUT		4000
String 	hostname;

#define NUM_FIXT 11

//========================================================================================
//----------------------------------------------------------------------------------------
//																				GLOBALS
Preferences                             preferences;
Timer                                   t;
AsyncWebServer                          server(80);

Fixture f[NUM_FIXT];
bool checking_fixtures;

//========================================================================================
//----------------------------------------------------------------------------------------

void update() {
    if (checking_fixtures) return;
    for (int i = 0; i < NUM_FIXT; i++) {
        f[i].update();
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
    
    File root = SPIFFS.open(dirname);
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


//========================================================================================
//----------------------------------------------------------------------------------------
//																				SETUP

void setup(){
    Serial.begin(115200);
 
    for (int i = 0; i < NUM_FIXT; i++) {
        f[i].setAddress(i+1);
    }

    if(!SPIFFS.begin()){
         Serial.println("An Error has occurred while mounting SPIFFS");
         return;
    }
    
    listDir(SPIFFS, "/", 0);
//     writeFile(SPIFFS, "/test.txt", "Hello \n");

 
    preferences.begin("lights", false);

    hostname = "lights"; 
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
            request->send(SPIFFS, "/index.html",  String(), false, processor);
        });

        server.on("/colors", HTTP_GET, [](AsyncWebServerRequest *request){
            request->send(SPIFFS, "/colors.html",  String(), false, processor);
        });

        server.on("/fixtures", HTTP_GET, [](AsyncWebServerRequest *request){
            request->send(SPIFFS, "/fixtures.html",  String(), false, processor);
        });

        server.on("/levels", HTTP_GET, [](AsyncWebServerRequest *request){
            request->send(SPIFFS, "/levels.html",  String(), false, processor);
        });

        server.on("/src/bootstrap.bundle.min.js", HTTP_GET, [](AsyncWebServerRequest *request){
            request->send(SPIFFS, "/src/bootstrap.bundle.min.js", "text/javascript");
        });
 
        server.on("/src/jquery-3.4.1.min.js", HTTP_GET, [](AsyncWebServerRequest *request){
            request->send(SPIFFS, "/src/jquery-3.4.1.min.js", "text/javascript");
        });
 
        server.on("/src/bootstrap.min.css", HTTP_GET, [](AsyncWebServerRequest *request){
            request->send(SPIFFS, "/src/bootstrap.min.css", "text/css");
        });

        server.on("/src/jquery-ui.min.js", HTTP_GET, [](AsyncWebServerRequest *request){
            request->send(SPIFFS, "/src/jquery-ui.min.js", "text/javascript");
        });

        server.on("/src/jquery-ui.min.css", HTTP_GET, [](AsyncWebServerRequest *request){
            request->send(SPIFFS, "/src/jquery-ui.min.css", "text/css");
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

        });
        server.on("/getcameo", HTTP_GET, [] (AsyncWebServerRequest *request) {
                    request->send(200, "text/text", cuelist("/cameo"));

        });
  
    server.on("/delete", HTTP_GET, [] (AsyncWebServerRequest *request) {
                   String inputMessage;
                 if (request->hasParam("file")) {
                	inputMessage = request->getParam("file")->value();
                	inputMessage = "/cameo/"+inputMessage;

                    if(SPIFFS.remove(inputMessage)){
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



                    File file = SPIFFS.open(inputMessage.c_str());
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

//readFile(SPIFFS, inputMessage.c_str());



                    request->send(200, "text/text",reply);
                }
        });

        server.on("/save", HTTP_GET, [] (AsyncWebServerRequest *request) {
            String inputMessage;
            
        	if (request->hasParam("file")) {
                	inputMessage = request->getParam("file")->value();
                	inputMessage = "/cameo/"+inputMessage;
                    File file = SPIFFS.open(inputMessage.c_str(), FILE_WRITE);
                	
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
        
       server.on("/check", HTTP_GET, [] (AsyncWebServerRequest *request) {
            String inputMessage;
            
        	if (request->hasParam("fixture")) {
            	    checking_fixtures = true;
                    int fixt;
                	inputMessage = request->getParam("fixture")->value();
                    ESP32DMX.clearSlots();

                	if (inputMessage == "Stage ON") {
                        for (int i = 1; i < 22; i++) {
                            ESP32DMX.setSlot(i, 255);	
                        }
                  	} else if (inputMessage == "Backdrop ON") {
                          for (int i = 0; i < 6; i++) {
                            ESP32DMX.setSlot(24 + (3*i), 255);	
                        }
                	} else if (inputMessage == "All ON") {
                        for (int i = 1; i < 22; i++) {
                            ESP32DMX.setSlot(i, 255);	
                        }
                        for (int i = 0; i < 6; i++) {
                            ESP32DMX.setSlot(24+ (3*i), 255);	
                        }
                    } else if (inputMessage == "All OFF") {
                       ESP32DMX.clearSlots();
          	        } else {
                        fixt = inputMessage.toInt();
                        ESP32DMX.clearSlots();
                        ESP32DMX.setSlot(fixt, 255);	
                        if (fixt==11 || fixt== 16){
                            Serial.println("Color Cameo");
                            ESP32DMX.setSlot(fixt + 1, 255);	
                            ESP32DMX.setSlot(fixt + 2, 255);	
                            ESP32DMX.setSlot(fixt + 3, 127);	
                            ESP32DMX.setSlot(fixt + 4, 255);	
                        }
                	}
                    request->send(200, "text/text", "check");
            }

        });

 
        server.begin();
    }
    
    ESP32DMX.startOutput(DMX_SERIAL_OUTPUT_PIN);
    

  //  test();
    t.every(20, update);
    //t.after(6000, test);
    //t.every(4000,test);
}



//========================================================================================
//----------------------------------------------------------------------------------------
//																				loop
 
void loop(){
    t.update();
}