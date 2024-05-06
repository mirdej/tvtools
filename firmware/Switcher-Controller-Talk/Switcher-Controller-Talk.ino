#define VERSION "2022-05-02"

//----------------------------------------------------------------------------------------
//
//  ATEM  Controller by [ a n y m a ]
//                                          
//          Target MCU: Olimex ESP32 PoE (was Olimex ESP32 PoE ISO)
//          Copyright:  2019 Michael Egger, me@anyma.ch
//          License:        This is FREE software (as in free speech, not necessarily free beer)
//                                  published under gnu GPL v.3
//
//----------------------------------------------------------------------------------------

// ESP2.0.4, Ethernet.h @ 2.0.1.

#include <FastLED.h>
#include "Timer.h"
#include <SPI.h>
#include <ESPmDNS.h>
#include "FS.h"
#include <LittleFS.h>
#include "ESPAsyncWebServer.h"
#include <Preferences.h>
#include <AsyncElegantOTA.h>
#include <ArduinoJson.h>


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
#define IP3	252

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
AsyncWebSocket                          ws("/ws");


static bool eth_connected = false;


IPAddress 						switcherIp			(IP1, IP2, IP3, 241);	
IPAddress 						local_IP			(IP1, IP2, IP3, 200);
IPAddress 						gateway				(IP1, IP2, IP3, 1);
IPAddress 						subnet				(255, 255, 255, 0);
IPAddress 						primaryDNS			(8, 8, 8, 8); //optional
IPAddress 						secondaryDNS		(8, 8, 4, 4); //optional
IPAddress						player_Ip			(IP1, IP2, IP3, 242);
IPAddress						recorder_Ip			(IP1, IP2, IP3, 243);
ATEMmax 						AtemSwitcher;

ClientBMDHyperdeckStudio player; 
ClientBMDHyperdeckStudio recorder; 

int greenscreen;


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

long secret_press_start;

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
	    if (i + 1 == greenscreen) {
            AtemSwitcher.setPreviewInputVideoSource(0, 8);
            AtemSwitcher.setKeyerFillSource(0,0,greenscreen);
            AtemSwitcher.setTransitionNextTransition(0,3);
            // AtemSwitcher.setKeyerOnAirEnabled(0,0,true);
	    } else {
    		AtemSwitcher.setPreviewInputVideoSource(0, i+1);
            AtemSwitcher.setKeyerOnAirEnabled(0,0,false);
            AtemSwitcher.setTransitionNextTransition(0,1);
	    }
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

    if (secret_press_start > 0) {
        if (millis() - secret_press_start > 3000) {
            Serial.println("SECRET LONGPRESS");
            AtemSwitcher.setProgramInputVideoSource(0, 6);
            secret_press_start = 0;
        }
    }


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
            if (selected == 0) {
                if (i==5) {
                    Serial.println("SECRET PRESS");
                    secret_press_start = millis();
                }
            }
            
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
        	if (secret_press_start > 0) {
                Serial.println("SECRET CLEAR");
        	    secret_press_start = 0;
        	}
        	
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
			if (greenscreen - 1 == i) {
			    if (on_preview == 7) {pixels[i] = CRGB::Green;}
			    if (on_air == 7) {pixels[i] = CRGB::Red;    }			    
			}
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

//========================================================================================
//----------------------------------------------------------------------------------------
//																				Websocket

void handleWebSocketMessage(void *arg, uint8_t *data, size_t len) {
    AwsFrameInfo *info = (AwsFrameInfo*)arg;

    DynamicJsonDocument replyJsonDoc(2048);
    boolean doReply = false;

    if (info->final && info->index == 0 && info->len == len && info->opcode == WS_TEXT) {


        data[len] = 0;
        StaticJsonDocument<1024> inputJsonDoc;

        DeserializationError err = deserializeJson(inputJsonDoc, data);
        if (err) {
            Serial.print(F("deserializeJson() failed with code "));
            Serial.println(err.c_str());
            return;
        }
        
        if (inputJsonDoc["message"] == "getInfo") {

    
            replyJsonDoc["message"] = "info";
            replyJsonDoc["hostname"] = hostname;
            replyJsonDoc["ip"] = ETH.localIP().toString();
            doReply = true;

        } else if (inputJsonDoc["message"] == "getCameras") {
            get_camera_settings();
        }

    }

    if (doReply) {
        char data[1024];
        size_t len = serializeJson(replyJsonDoc, data);
        Serial.print("Data size: ");
        Serial.println(len,DEC);
        ws.textAll(data, len);
    }        

}



//----------------------------------------------------------------------------------------
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

void restart() {
	ESP.restart();
}

void dsk2(int on) {
    if (on) {
//		AtemSwitcher.setAudioMixerInputMixOption(7, 1);
        AtemSwitcher.setDownstreamKeyerFillSource(1, 6);
        AtemSwitcher.setDownstreamKeyerKeySource(1, 9);
        AtemSwitcher.setDownstreamKeyerPreMultiplied(1,true);
        AtemSwitcher.setDownstreamKeyerOnAir(1,true);

        Serial.println("DSK2 On Air");
    } else {
        AtemSwitcher.setDownstreamKeyerOnAir(1,false);
        Serial.println("DSK2 Off");
    }
}

void set_camera_settings() {
/*
    AtemSwitcher.setCameraControlColorbars(2, 1);
    return;
    */
    
    File file = LittleFS.open("/settings.json");
    DynamicJsonDocument doc(2048);
    DeserializationError error = deserializeJson(doc, file);
    file.close();

    if (error) {
        Serial.println(F("Failed to read file, using default configuration"));
        return;
    }
    
    //AtemSwitcher.setCameraControlGain(1,2048);
   // return;
    

    for (int cam = 0; cam < 5; cam++) {
    
        AtemSwitcher.setCameraControlGain(cam + 1, doc["camera"][cam]["Gain"].as<int>());
     //   AtemSwitcher.setCameraControlIris(cam + 1, doc["camera"][cam]["Iris"].as<int>());
        AtemSwitcher.setCameraControlWhiteBalance(cam + 1, doc["camera"][cam]["Wb"].as<int>());
  /*      AtemSwitcher.setCameraControlShutter(cam + 1, doc["camera"][cam]["Shutter"].as<int>());
        AtemSwitcher.setCameraControlLumMix(cam + 1, doc["camera"][cam]["LumMix"].as<int>());
        AtemSwitcher.setCameraControlContrast(cam + 1,  doc["camera"][cam]["Contrast"].as<int>());
        AtemSwitcher.setCameraControlSaturation(cam + 1,  doc["camera"][cam]["Saturation"].as<int>());

        AtemSwitcher.setCameraControlLiftY(cam + 1, doc["camera"][cam]["LiftY"].as<int>());
        AtemSwitcher.setCameraControlGammaY(cam + 1,  doc["camera"][cam]["GammaY"].as<int>());
        AtemSwitcher.setCameraControlGainY(cam + 1, doc["camera"][cam]["GainY"].as<int>());
*/
    }

/*
       replyJsonDoc["camera"][cam]["Gain"] = AtemSwitcher.getCameraControlGain(cam + 1);
        replyJsonDoc["camera"][cam]["Iris"] = AtemSwitcher.getCameraControlIris(cam + 1);
        replyJsonDoc["camera"][cam]["Wb"] = AtemSwitcher.getCameraControlWhiteBalance(cam + 1);
        replyJsonDoc["camera"][cam]["Shutter"] = AtemSwitcher.getCameraControlShutter(cam + 1);
     replyJsonDoc["camera"][cam]["LumMix"] = AtemSwitcher.getCameraControlLumMix(cam + 1);
     replyJsonDoc["camera"][cam]["Contrast"] = AtemSwitcher.getCameraControlContrast(cam + 1);
          replyJsonDoc["camera"][cam]["Saturation"] = AtemSwitcher.getCameraControlSaturation(cam + 1);

   replyJsonDoc["camera"][cam]["LiftY"] = AtemSwitcher.getCameraControlLiftY(cam + 1);
   replyJsonDoc["camera"][cam]["GammaY"] = AtemSwitcher.getCameraControlGammaY(cam + 1);
   replyJsonDoc["camera"][cam]["GainY"] = AtemSwitcher.getCameraControlGainY(cam + 1);
*/

}



void get_camera_settings() {
    DynamicJsonDocument replyJsonDoc(2048);

    replyJsonDoc["message"] = "camera_settings";
    JsonArray camlist  = replyJsonDoc.createNestedArray("camera");
    for (int cam = 0; cam < 5; cam++) {
        replyJsonDoc["camera"][cam]["Gain"] = AtemSwitcher.getCameraControlGain(cam + 1);
        replyJsonDoc["camera"][cam]["Iris"] = AtemSwitcher.getCameraControlIris(cam + 1);
        replyJsonDoc["camera"][cam]["Wb"] = AtemSwitcher.getCameraControlWhiteBalance(cam + 1);
        replyJsonDoc["camera"][cam]["Shutter"] = AtemSwitcher.getCameraControlShutter(cam + 1);
     replyJsonDoc["camera"][cam]["LumMix"] = AtemSwitcher.getCameraControlLumMix(cam + 1);
     replyJsonDoc["camera"][cam]["Contrast"] = AtemSwitcher.getCameraControlContrast(cam + 1);
          replyJsonDoc["camera"][cam]["Saturation"] = AtemSwitcher.getCameraControlSaturation(cam + 1);

   replyJsonDoc["camera"][cam]["LiftY"] = AtemSwitcher.getCameraControlLiftY(cam + 1);
   replyJsonDoc["camera"][cam]["GammaY"] = AtemSwitcher.getCameraControlGammaY(cam + 1);
   replyJsonDoc["camera"][cam]["GainY"] = AtemSwitcher.getCameraControlGainY(cam + 1);
     
        
    /*
                  int16_t getCameraControlFocus(uint8_t input);
                  int16_t getCameraControlGain(uint8_t input);
                  int16_t getCameraControlWhiteBalance(uint8_t input);
                  int16_t getCameraControlSharpeningLevel(uint8_t input);
                  int16_t getCameraControlZoomNormalized(uint8_t input);
                  int16_t getCameraControlZoomSpeed(uint8_t input);
                  int16_t getCameraControlColorbars(uint8_t input);
                  int16_t getCameraControlLiftR(uint8_t input);
                  int16_t getCameraControlGammaR(uint8_t input);
                  int16_t getCameraControlGainR(uint8_t input);
                  int16_t (uint8_t input);
                  int16_t getCameraControlHue(uint8_t input);
                  int16_t getCameraControlShutter(uint8_t input);
                  int16_t getCameraControlLiftG(uint8_t input);
                  int16_t getCameraControlGammaG(uint8_t input);
                  int16_t getCameraControlGainG(uint8_t input);
                  int16_t getCameraControlContrast(uint8_t input);
                  int16_t getCameraControlSaturation(uint8_t input);
                  int16_t getCameraControlLiftB(uint8_t input);
                  int16_t getCameraControlGammaB(uint8_t input);
                  int16_t getCameraControlGainB(uint8_t input);
                  int16_t getCameraControlLiftY(uint8_t input);
                  int16_t getCameraControlGammaY(uint8_t input);
                  int16_t getCameraControlGainY(uint8_t input); */

    }
    
    
    
    char data[2048];
    size_t len = serializeJson(replyJsonDoc, data);
    log_v("Data size: %d", len);
    log_v("Data size: %s", data);
    ws.textAll(data, len);

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

	server.on("/dsk2", HTTP_GET, [](AsyncWebServerRequest *request){
		String inputMessage;
		if (request->hasParam("on")) {
				inputMessage = request->getParam("on")->value();
				dsk2(inputMessage.toInt());
		}
		int dsk2_on_air = AtemSwitcher.getDownstreamKeyerOnAir(0);
		request->send(200, "text/text", String(dsk2_on_air));
	});

	server.on("/fcp", HTTP_GET, [](AsyncWebServerRequest *request){
		String inputMessage;
		if (request->hasParam("on")) {
				inputMessage = request->getParam("on")->value();
				if (inputMessage.toInt()) {
		            AtemSwitcher.setProgramInputVideoSource(0, 6);
					Serial.println("Compi On Air");
				} else {
					AtemSwitcher.setDownstreamKeyerOnAir(1,false);
                    AtemSwitcher.performCutME(0);
					Serial.println("Compi Off");
				}
		}
		int dsk2_on_air = AtemSwitcher.getDownstreamKeyerOnAir(0);
		request->send(200, "text/text", String(dsk2_on_air));
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
		
		if (request->hasParam("camera_count")) {
				inputMessage = request->getParam("camera_count")->value();
				camera_count = inputMessage.toInt();
				if (camera_count < 1) camera_count = 1;
				if (camera_count > 5) camera_count = 5;
				Serial.println("set_count");
				Serial.println(camera_count);
                preferences.putInt("camera_count", camera_count);
				request->send(200, "text/text", String(camera_count));
		} else 		if (request->hasParam("greenscreen")) {
				inputMessage = request->getParam("greenscreen")->value();
				greenscreen = inputMessage.toInt();
                preferences.putInt("greenscreen", greenscreen);
				if (greenscreen < 0) greenscreen = 0;
				if (greenscreen > 5) greenscreen = 5;
				Serial.println("set_greenscreen");
				Serial.println(greenscreen);
                preferences.putInt("greenscreen", greenscreen);
				request->send(200, "text/text", String(greenscreen));
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
			preferences.putString("hostname", hostname);

		} else if (request->hasParam("ReStart")) {
			request->send(200, "text/text", "Restarting...");
			restart();
		} else if (request->hasParam("HardwareTest")) {
			request->send(200, "text/text", "Running Hardware test...");
			
		} else if (request->hasParam("camera")) {
			inputMessage = request->getParam("camera")->value();
			int cam = inputMessage.toInt() - 1;
			if (cam < 0) cam = 0;
			if (cam > 5) cam = 5;
			
			if (request->hasParam("gain")) {
					request->send(200, "text/text", String(AtemSwitcher.getCameraControlGain(cam)));
			}
		}else {
			inputMessage = "No message sent";
		}
		
		Serial.println(inputMessage);
		request->send(200, "text/text", inputMessage);
	});

      server.on("/post", HTTP_POST, [] (AsyncWebServerRequest *request) {
            int params = request->params();
            for(int i=0;i<params;i++){
              AsyncWebParameter* p = request->getParam(i);
              if(p->isFile()){ //p->isPost() is also true
                Serial.printf("FILE[%s]: %s, size: %u\n", p->name().c_str(), p->value().c_str(), p->size());
              } else if(p->isPost()){
                Serial.printf("POST[%s]: %s\n", p->name().c_str(), p->value().c_str());
            
                LittleFS.rename("/settings.json","/bak_settings.json");
                File file = LittleFS.open("/settings.json", FILE_WRITE);
                if(file.print(p->value().c_str())) {
                    Serial.println("File was written");
                }else {
                    Serial.println("File write failed");
                }
                file.close();
            
            
              } else {
                Serial.printf("GET[%s]: %s\n", p->name().c_str(), p->value().c_str());
              }
            }
    });


    server.serveStatic("/", LittleFS, "/").setDefaultFile("index.html");    


    AsyncElegantOTA.begin(&server);
    ws.onEvent(onEvent);
    server.addHandler(&ws);

	server.begin();
	Serial.println("Webserver running");
}

//----------------------------------------------------------------------------------------
//																				WifiEvent

void WiFiEvent(WiFiEvent_t event)
{
  switch (event) {
    case ARDUINO_EVENT_ETH_START:
      Serial.println("ETH Started");
      //set eth hostname here
      ETH.setHostname(hostname.c_str());
      break;
    case ARDUINO_EVENT_ETH_CONNECTED:
      Serial.println("ETH Connected");
      break;
    case ARDUINO_EVENT_ETH_GOT_IP:
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
        
		AtemSwitcher.begin(switcherIp);
		
        AtemSwitcher.serialOutput(1);
		AtemSwitcher.connect();
	        
        setup_web_server();
        connection_state = STATE_WIFI_OK;



      break;
    case ARDUINO_EVENT_ETH_DISCONNECTED:
      Serial.println("ETH Disconnected");
      eth_connected = false;
      player_online = false;
      recorder_online = false;
      break;
    case ARDUINO_EVENT_ETH_STOP:
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
    Serial.println("Setup Start");

    pinMode(PIN_CS, OUTPUT);
    digitalWrite(PIN_CS,HIGH);
	SPI.begin(PIN_SCK, PIN_MISO, PIN_MOSI);
	
	 if(!LittleFS.begin()){
         Serial.println("An Error has occurred while mounting LittleFS");
         return;
    }
 
    preferences.begin("anyma", false);
    camera_count = preferences.getInt("camera_count", 4);
    greenscreen = preferences.getInt("greenscreen", 3);

    Serial.print("Greenscreen: ");Serial.println(greenscreen);

    hostname = "switchbox";

    Serial.println("Looking for network");

	WiFi.onEvent(WiFiEvent);
    ETH.begin();
	ETH.config(local_IP, gateway, subnet, primaryDNS, secondaryDNS);

	
	while(!eth_connected) {
		Serial.print(".");
		delay(100);
		
		if (millis() > WIFI_TIMEOUT) break;
	}
	
	while (!AtemSwitcher.hasInitialized()) { AtemSwitcher.runLoop(); } 
	
	Serial.println();
	Serial.println("Atem Switcher connected");
	
    dsk2(1);
    set_camera_settings();

	
	t.every(100, check_tally); 
	t.every(20, check_buttons);    
	t.every(50, update_pixels);    
	t.every(50, check_ad); 
	
	
	//t.every(200,get_camera_settings);
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
