#define VERSION "2022-05-02"

//----------------------------------------------------------------------------------------
//
//  ATEM  Controller by [ a n y m a ]
//                                          
//          Target MCU: Olimex ESP32 PoE ISO
//          Copyright:  2019 Michael Egger, me@anyma.ch
//          License:        This is FREE software (as in free speech, not necessarily free beer)
//                                  published under gnu GPL v.3
//
//----------------------------------------------------------------------------------------


//----------------------------------------------------------------------------------------
// ATTENTION
// does not work with vanilla Skaarhoj Library en ESP32
//  #include Ethernet.h must be changed to #include Wifi.h
//----------------------------------------------------------------------------------------




#include <FastLED.h>
#include "Timer.h"
#include <SPI.h>
#include <ESPmDNS.h>
#include "FS.h"
#include <LittleFS.h>
#include "ESPAsyncWebServer.h"
#include <Preferences.h>

#include <ATEMbase.h>
#include <ATEMmax.h>
#include <ClientBMDHyperdeckStudio.h>

#define ETH_CLK_MODE ETH_CLOCK_GPIO17_OUT
#define ETH_PHY_POWER 12

#include <ETH.h>



// ...........................................................................DEFFINES


#define BRIGHTNESS	120
/*
const int PIN_POT    	=   0;
const int PIN_PIXELS    =   1;
const int PIN_CS        = 	3;
const int PIN_SCK		= 2;
const int PIN_MISO		= 4;
const int PIN_MOSI	= 15;
*/

const int PIN_POT    	=   4;
const int PIN_PIXELS    =   16;
const int PIN_CS        = 	5;
const int PIN_SCK		= 14;
const int PIN_MISO		= 2;
const int PIN_MOSI	= 15;


const int NUM_PIXELS    =   8;

#define WIFI_TIMEOUT		40000



#define STATE_OFFLINE		0
#define STATE_WIFI_OK		1
#define	STATE_SWITCH_OK		2


#define IP1	192
#define IP2	168
#define IP3	0

//========================================================================================
//----------------------------------------------------------------------------------------
//																				GLOBALS
Preferences                             preferences;
int 									camera_count = 4;
int										fixture[8];

int 									connection_state;

CRGB                                    pixels[NUM_PIXELS];
Timer									t;
int 									buttons_raw;
long 									last_ui_interaction;
String 									hostname = "switchbox";
AsyncWebServer                          server(80);

static bool eth_connected = false;


//IPAddress 						switcherIp(192, 168, 0, 241);	 // <= SETUP!  IP address of the ATEM Switcher
IPAddress 						switcherIp			(IP1, IP2, IP3, 241);	 // <= SETUP!  IPAddress 						local_IP			(IP1, IP2, IP3, 200);
IPAddress 						gateway				(IP1, IP2, IP3, 1);
IPAddress 						subnet				(255, 255, 255, 0);
IPAddress 						primaryDNS			(8, 8, 8, 8); //optional
IPAddress 						secondaryDNS		(8, 8, 4, 4); //optional
IPAddress						player_Ip			(IP1, IP2, IP3, 242);
IPAddress						recorder_Ip			(IP1, IP2, IP3, 243);
ATEMmax 						AtemSwitcher;

ClientBMDHyperdeckStudio player; 
ClientBMDHyperdeckStudio recorder; 


int					on_air 		= -1;
int					on_preview 	= -1;
int 				selected;
int 				fade_rate;

#define MODE_NORMAL     0
#define MODE_TALK_PREP  1
#define MODE_TALK       2
#define MODE_WATCH      3

int mode;

long talk_end;
boolean	player_online = false;
boolean	recorder_online = false;

char buf[] = "Hello this is an empty message with, a comma in it";



void service_BMD() {
	if(!eth_connected) return;
	if (!AtemSwitcher.hasInitialized()) { AtemSwitcher.runLoop(); } 
	else { AtemSwitcher.runLoop(5);}

	if(recorder_online) {     recorder.runLoop();	}	
	if(player_online) {		player.runLoop(); }
}


//----------------------------------------------------------------------------------------
//																		tally
void check_tally(){
	if(!eth_connected) return;
	on_air = AtemSwitcher.getProgramInputVideoSource(0) - 1;
	on_preview = AtemSwitcher.getPreviewInputVideoSource(0) - 1;
	if (on_air > -1) connection_state = STATE_SWITCH_OK;
}


void check_hyperdecks() {
	if(!eth_connected) return;
	// Start Hyperdeck connection:
	if (!player.hasInitialized()) {
		Serial.println("Connecting to PLAYER");
		player.begin(player_Ip);	 // <= SETUP (the IP address of the Hyperdeck Studio)
		player.serialOutput(1);  // 1= normal, 2= medium verbose, 3=Super verbose
		player.connect();  // For some reason the first connection attempt seems to fail, but in the runloop it will try to reconnect.
		player.runLoop();
    	if (player.hasInitialized()) player_online = true;
	}
	
	
	if (!recorder.hasInitialized()) {
		Serial.println("Connecting to RECORDER");
		recorder.begin(recorder_Ip);	 // <= SETUP (the IP address of the Hyperdeck Studio)
		recorder.serialOutput(1);  // 1= normal, 2= medium verbose, 3=Super verbose
		recorder.connect();  // For some reason the first connection attempt seems to fail, but in the runloop it will try to reconnect.
		recorder.runLoop();
    	if (recorder.hasInitialized()) recorder_online = true;
	}
	

}
//----------------------------------------------------------------------------------------
//																		Prepare Talk
void prepare_talk() {
    if (mode == MODE_TALK) return;         // prevent double presses
    set_preview(0);
    set_on_air(1);
    
    AtemSwitcher.setDownstreamKeyerFillSource(0, 7);
	AtemSwitcher.setDownstreamKeyerKeySource(0, 10);
	AtemSwitcher.setDownstreamKeyerPreMultiplied(0,true);
	AtemSwitcher.setDownstreamKeyerOnAir(0,true);
    AtemSwitcher.setAudioMixerInputMixOption(7, 1);

	mode = MODE_TALK_PREP;
}

//----------------------------------------------------------------------------------------
//																		Start Talk

void start_talk() {
	if(!eth_connected) return;
    if (mode == MODE_TALK) {Serial.println("Already talking"); return; };         // prevent double presses
    
	if (mode != MODE_TALK_PREP) {
	    prepare_talk();
	    return;
	}
	Serial.println("Starting Talk");
	check_hyperdecks();
	
	AtemSwitcher.setAudioMixerInputMixOption(8, 0);
	recorder.previewEnable(true);
	service_BMD();
	
  	
	player.stop();
	player.gotoClipID(1);
	player.gotoClipStart();
    player.playSingleClip(true);
    Serial.println("Started Talk");

	recorder.record();
	mode = MODE_TALK;
}

//----------------------------------------------------------------------------------------
//																		End Talk

void end_talk() {
    if (mode != MODE_TALK) {Serial.println("Cannot end talk now"); return; }         // prevent double presses

	check_hyperdecks();

 	Serial.println("End Talk called");

	AtemSwitcher.setDownstreamKeyerOnAir(0,true);
	AtemSwitcher.runLoop();

	player.gotoClipID(2);
	player.gotoClipStart();
    player.playSingleClip(true);

	talk_end = millis();
 	Serial.println("End Talk");
}   

void talk_finalize() {
	Serial.println("Finished");
	recorder.stop();
    prepare_talk();
}

//----------------------------------------------------------------------------------------
//																		Watch Talk

void watch_talk() {
	if(!eth_connected) return;

    mode = MODE_WATCH;
	
	Serial.println("Watch");
    check_hyperdecks();
/*int n = recorder.getTotalClipCount();
	int id = recorder.getFileClipId(n);
	recorder.previewEnable(false);
	recorder.gotoClipID(id);*/
	recorder.gotoTimelineEnd();
	recorder.gotoClipStart();
    recorder.playSingleClip(true);
    AtemSwitcher.setDownstreamKeyerOnAir(0,false);
	AtemSwitcher.setProgramInputVideoSource(0,8);
	AtemSwitcher.setAudioMixerInputMixOption(8, 1);
}

void toggle_play() {
    if (mode != MODE_WATCH) {Serial.println("Cannot pause now, wriong mode"); return; }         // prevent double presses

	Serial.println("Play-Pause");
	if (!recorder.isInPreview()) {
		if (recorder.isPlaying()) recorder.stop();
		else recorder.play();
	}
}

void skip(signed int secs) {
    if (mode != MODE_WATCH) {Serial.println("Cannot pause now, wriong mode"); return; }         // prevent double presses

	Serial.print("Skip ");
	Serial.println(secs);
	if (!recorder.isInPreview()) {
		if (secs < 0) {
			recorder.goBackwardsInTimecode(0,0,abs(secs),0);
		} else {
			recorder.goForwardInTimecode(0,0,abs(secs),0);			
		}
	}
}
//----------------------------------------------------------------------------------------
//																		buttons

void set_preview(int i) {
	if (i < 0) return;
	if (i < camera_count) {
		AtemSwitcher.setPreviewInputVideoSource(0, i+1);
	} 
}

void set_on_air(int i) {
	if (i < 0) return;
	if (i < camera_count) {
		AtemSwitcher.setProgramInputVideoSource(0, i+1);
	} 
}

void check_buttons(){
    static long old_buttons;
    int temp;
    SPI.beginTransaction(SPISettings(80000, MSBFIRST, SPI_MODE0));
    digitalWrite(PIN_CS,LOW);
    delay(1);
    digitalWrite(PIN_CS,HIGH);
    buttons_raw = SPI.transfer(0x00);
    SPI.endTransaction();

    if (buttons_raw == old_buttons) return;
	
//	Serial.println(buttons_raw,BIN);
	
    long triggers_press = old_buttons & ~buttons_raw;
    long triggers_release = ~old_buttons & buttons_raw;
    old_buttons = buttons_raw;
    
    if (triggers_press == 0 && triggers_release == 0) return;
    

	last_ui_interaction = millis();

	if(!eth_connected) return;
    for (int i = 0; i < 8; i++) {
        if (triggers_press & (1 << i)) {
			selected = i-1;
			set_preview(selected);
			
			if (i == 7){
            	AtemSwitcher.setTransitionMixRate(0, fade_rate);
				AtemSwitcher.setTransitionStyle(0, 0);
 			   	AtemSwitcher.performAutoME(0);
			}
			
			if (i == 6) {
			    AtemSwitcher.performCutME(0);
			}
         }
        if (triggers_release & (1 << i)) {
        	selected = -1;
		}
    }    
  }

//----------------------------------------------------------------------------------------
//																		pixels
void update_pixels() { 
	if (connection_state == STATE_OFFLINE) {
		for (int i = 0; i < NUM_PIXELS; i++) {
			if (selected == i) pixels[i] = CRGB::White;
			else pixels[i] = CRGB::Purple;
		}
	}
	
	if (connection_state == STATE_WIFI_OK) {
		for (int i = 0; i < NUM_PIXELS; i++) {
			if (selected == i) pixels[i] = CRGB::White;
			else pixels[i] = CRGB::Navy;
		}
	}
	
	if (connection_state == STATE_SWITCH_OK) {
		for (int i = 0; i < NUM_PIXELS; i++) {
			pixels[i] = 0x201D10;
			if (on_preview == i) 	pixels[i] = CRGB::Green;
			if (on_air == i) 		pixels[i] = CRGB::Red;
			if (selected == i) 		pixels[i] = CRGB::White;
		}
	}
	FastLED.show();
}

//----------------------------------------------------------------------------------------
//																		AD

void check_ad() {
	signed int temp;
	static int fade_rate_avg;

	temp = analogRead(PIN_POT);
	temp /= 32;
	
	if (temp < 0) temp = 0;
	if (temp > 100) temp = 100;
	
	temp = (3 * fade_rate_avg + temp ) / 4;
	fade_rate_avg = temp;
	fade_rate = temp;
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

String string_to_addresses(String  input) {
	int addr;
	char *token;
	String  response;
	Serial.println(input);
	const char s[2] = ",";
	strcpy(buf,input.c_str());

	/* get the first token */
	token = strtok(buf, s);
	int i = 0;
	/* walk through other tokens */
	while( token != NULL ) {
		// printf( " %s\n", token );
		addr = atoi(token);
		response += addr;
		if (addr < 0) addr = 0;
		if (addr > 496) addr = 496;
		response += ",";
		
		Serial.print("Fixture ");
		Serial.print(i,DEC);
		Serial.print(" ");
		Serial.println(addr,DEC);
		
		fixture[i] = addr;
		
		token = strtok(NULL, s);
		i++;
		if (i > 7) break;
	}

	response.remove(response.length()-1,1);
	camera_count = i;
	Serial.print("Number of fixtures:" );
 	Serial.println(camera_count);
	Serial.println(response);

    preferences.begin("changlier", false);
	preferences.putString("fixtures",response);

	return response;
}

void restart() {
	ESP.restart();
}

void setup_web_server() {
Serial.println("Setting up wenbserver");
	server.on("/talk", HTTP_GET, [](AsyncWebServerRequest *request){
		String inputMessage;
		if (request->hasParam("action")) {
				inputMessage = request->getParam("action")->value();
				if(inputMessage == "start" ) start_talk();
				if(inputMessage == "end" ) end_talk();
				if(inputMessage == "watch" ) watch_talk();
				if(inputMessage == "toggleview" ) AtemSwitcher.performCutME(0);
				if(inputMessage == "toggleplay" ) toggle_play();
				if(inputMessage == "prepare" ) prepare_talk();
		}
		if (request->hasParam("skip")) {
				inputMessage = request->getParam("skip")->value();
				skip(inputMessage.toInt());	
		}
		request->send(200, "text/text", String(on_air));
	});
	
	server.on("/air", HTTP_GET, [](AsyncWebServerRequest *request){
		String inputMessage;
		if (request->hasParam("cam")) {
				inputMessage = request->getParam("cam")->value();
				set_on_air(inputMessage.toInt() - 1);
		}
		request->send(200, "text/text", String(on_air));
	});
	server.on("/preview", HTTP_GET, [](AsyncWebServerRequest *request){
		String inputMessage;
		if (request->hasParam("cam")) {
				inputMessage = request->getParam("cam")->value();
				set_preview(inputMessage.toInt() - 1);
		}
		request->send(200, "text/text", String(on_preview));
	});

	server.on("/dsk1", HTTP_GET, [](AsyncWebServerRequest *request){
		String inputMessage;
		if (request->hasParam("on")) {
				inputMessage = request->getParam("on")->value();
				if (inputMessage.toInt()) {
					AtemSwitcher.setAudioMixerInputMixOption(7, 1);
					AtemSwitcher.setDownstreamKeyerFillSource(0, 7);
					AtemSwitcher.setDownstreamKeyerKeySource(0, 10);
					AtemSwitcher.setDownstreamKeyerPreMultiplied(0,true);
					AtemSwitcher.setDownstreamKeyerOnAir(0,true);
					Serial.println("DSK1 On Air");
				} else {
					AtemSwitcher.setDownstreamKeyerOnAir(0,false);
					Serial.println("DSK1 Off");
				}
		}
		int dsk1_on_air = AtemSwitcher.getDownstreamKeyerOnAir(0);
		request->send(200, "text/text", String(dsk1_on_air));
	});


	server.on("/", HTTP_GET, [](AsyncWebServerRequest *request){
		request->send(LittleFS, "/index.html",  String(), false, processor);
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

	server.on("/rc/bootstrap4-toggle.min.js", HTTP_GET, [](AsyncWebServerRequest *request){
		request->send(LittleFS, "rc/bootstrap4-toggle.min.js", "text/javascript");
	});

	server.on("/src/bootstrap4-toggle.min.css", HTTP_GET, [](AsyncWebServerRequest *request){
		request->send(LittleFS, "/src/bootstrap4-toggle.min.css", "text/css");
	});


   server.on("/set", HTTP_GET, [] (AsyncWebServerRequest *request) {
		String inputMessage;
					
		inputMessage = "No message sent";
		//List all parameters
		int params = request->params();
		for(int i=0;i<params;i++){
		  AsyncWebParameter* p = request->getParam(i);
		  if(p->isFile()){ //p->isPost() is also true
			Serial.printf("FILE[%s]: %s, size: %u\n", p->name().c_str(), p->value().c_str(), p->size());
		  } else if(p->isPost()){
			Serial.printf("POST[%s]: %s\n", p->name().c_str(), p->value().c_str());
		  } else {
			Serial.printf("GET[%s]: %s\n", p->name().c_str(), p->value().c_str());
		  }
		}
		
		if (request->hasParam("addresses")) {
				inputMessage = request->getParam("addresses")->value();
				request->send(200, "text/text", string_to_addresses(inputMessage));
		}

	});

	 server.on("/get", HTTP_GET, [] (AsyncWebServerRequest *request) {
		String inputMessage;
					
					
		//List all parameters
		int params = request->params();
		for(int i=0;i<params;i++){
		  AsyncWebParameter* p = request->getParam(i);
		  if(p->isFile()){ //p->isPost() is also true
			Serial.printf("FILE[%s]: %s, size: %u\n", p->name().c_str(), p->value().c_str(), p->size());
		  } else if(p->isPost()){
			Serial.printf("POST[%s]: %s\n", p->name().c_str(), p->value().c_str());
		  } else {
			Serial.printf("GET[%s]: %s\n", p->name().c_str(), p->value().c_str());
		  }
		}
		if (request->hasParam("HostName")) {
			inputMessage = request->getParam("HostName")->value();
			hostname = inputMessage;
//                writeFile(LittleFS, "/hostname.txt", inputMessage.c_str());
			preferences.begin("changlier", false);
			preferences.putString("hostname", hostname);
			preferences.end();

		} else if (request->hasParam("ReStart")) {
			request->send(200, "text/text", "Restarting...");
			restart();
		} else if (request->hasParam("HardwareTest")) {
			request->send(200, "text/text", "Running Hardware test...");
//                mode = MODE_TEST;
		}else {
			inputMessage = "No message sent";
		}
		Serial.println(inputMessage);
		request->send(200, "text/text", inputMessage);
	});

	server.begin();
	Serial.println("Wenbserver running");
}

//----------------------------------------------------------------------------------------
//																				WifiEvent

void WiFiEvent(WiFiEvent_t event)
{
  switch (event) {
    case SYSTEM_EVENT_ETH_START:
      Serial.println("ETH Started");
      //set eth hostname here
      ETH.setHostname(hostname.c_str());
      break;
    case SYSTEM_EVENT_ETH_CONNECTED:
      Serial.println("ETH Connected");
      break;
    case SYSTEM_EVENT_ETH_GOT_IP:
    Serial.println();
      Serial.print("ETH MAC: ");
      Serial.print(ETH.macAddress());
      Serial.print(", IPv4: ");
      Serial.print(ETH.localIP());
      if (ETH.fullDuplex()) {
        Serial.print(", FULL_DUPLEX");
      }
      Serial.print(", ");
      Serial.print(ETH.linkSpeed());
      Serial.println("Mbps");
      eth_connected = true;
      
		Serial.print("Wifi connected. IP: ");
        Serial.println(WiFi.localIP());

        if (!MDNS.begin(hostname.c_str())) {
             Serial.println("Error setting up MDNS responder!");
        }
        Serial.println("mDNS responder started");

        	// Initialize a connection to the switcher:
   /*     Serial.print("Begin Switcher IP ");
        Serial.println(switcherIp.toString());*/
        
        
		AtemSwitcher.begin(switcherIp);
		
        AtemSwitcher.serialOutput(1);
		AtemSwitcher.connect();

        setup_web_server();
        connection_state = STATE_WIFI_OK;



      break;
    case SYSTEM_EVENT_ETH_DISCONNECTED:
      Serial.println("ETH Disconnected");
      eth_connected = false;
      player_online = false;
      recorder_online = false;
      break;
    case SYSTEM_EVENT_ETH_STOP:
      Serial.println("ETH Stopped");
      eth_connected = false;
      break;
    default:
      break;
  }
}
//========================================================================================
//----------------------------------------------------------------------------------------
//																				SETUP



void setup() {

    FastLED.addLeds<NEOPIXEL, PIN_PIXELS>(pixels, NUM_PIXELS);

	for (int hue = 0; hue < 360; hue++) {
    	fill_rainbow( pixels, NUM_PIXELS, hue, 7);
	    delay(3);
    	FastLED.show(); 
  	}
	FastLED.setBrightness(BRIGHTNESS);

	Serial.begin(115200);

    pinMode(PIN_CS, OUTPUT);
    digitalWrite(PIN_CS,HIGH);
	SPI.begin(PIN_SCK, PIN_MISO, PIN_MOSI);
	
	 if(!LittleFS.begin()){
         Serial.println("An Error has occurred while mounting LittleFS");
         return;
    }
 
    hostname = "switchbox";
	camera_count = 4;
		
	WiFi.onEvent(WiFiEvent);
    ETH.begin();
	ETH.config(local_IP, gateway, subnet, primaryDNS, secondaryDNS);

	
	while(!eth_connected) {
		Serial.print(".");
		delay(100);
		
		if (millis() > WIFI_TIMEOUT) break;
	}
	
	Serial.println("Hello");
	t.every(100, check_tally); 
	t.every(20, check_buttons);    
	t.every(50, update_pixels);    
	t.every(50, check_ad); 
}
//========================================================================================
//----------------------------------------------------------------------------------------
//																				loop
 
void loop() {
	t.update();

    service_BMD();

	if (talk_end) {
	    if(millis() - talk_end > 1000) {
    		if (player.getTransportStatus() == ClientBMDHyperdeckStudio_TRANSPORT_STOPPED) {
	                talk_end = 0;
		    		talk_finalize();
		    }
		}
	}
}
