//----------------------------------------------------------------------------------------
//
//	LXControl Firmware
//						
//		Target MCU: ESP32-S3 DEV MODULE
//		Copyright:	2022 Michael Egger, me@anyma.ch
//		License: 	This is FREE software (as in free speech, not necessarily free beer)
//					published under gnu GPL v.3
//
//
//----------------------------------------------------------------------------------------


#include <Preferences.h>
#include <Timer.h>
#include <FastLED.h>

#include <WiFi.h>
#include <WiFiMulti.h>

#include <WiFiUDP.h>
#include <ESPmDNS.h>

#include "SPI.h"
#include <AppleMIDI.h>
#include <ESPAsyncWebServer.h>

#include <AsyncElegantOTA.h>


#define PIN_PIX         17
#define PIN_AD_BATT     2   
#define PIN_SENS        1
#define NUM_PIXELS      17

#define NUM_BUZZERS 4

#define STATUS_NO_WIFI              0
#define STATUS_NO_MIDI_SESSION      1
#define STATUS_READY                2
#define STATUS_ARMED                3
#define STATUS_TRIGGERED            4


int DEBUG = 0;

const CRGB team_colors[] = {    CRGB(255,0,200), 
                                CRGB(50,0,200), 
                                CRGB(0,255,200), 
                                CRGB(0,255,100)
                            };
int     batt_max, batt_min;
int     batt_level;

int buzzer_status       = STATUS_NO_WIFI;
int buzzer_id           = 0;
uint8_t midi_channel    = 1;

CRGB                        pixel[NUM_PIXELS];

CRGB                        team_color;
/*
Colors
    
    Team colors:
    
    Status Colors:
    - BLUE                      looking for network
    - GOLD                      waiting to be connected to midi session
    - TEAM COLOR DIM STEADY     connected to midi session
    - TEAM COLOR PULSING        armed
    - BRIGHT YELLOW             triggered
    - TEAM COLOR DIM STEADY     someone else triggered
    - GREEN BLINK:              right
    - RED FADEOUT:              false

*/


USING_NAMESPACE_APPLEMIDI
APPLEMIDI_CREATE_DEFAULTSESSION_INSTANCE();

Preferences                             preferences;
WiFiMulti                               wifiMulti;
AsyncWebServer                          server(80);

Timer									t;
String 									hostname;
int                                     hall_val;
int                                     channel;


long trigger_sent               = 0;

void test() {
    //Serial.println("I'm alive");
//    MIDI.sendNoteOn(2,64,1);
    Serial.println(hall_val);
}

void trigger(bool on) {
    if (on){
        MIDI.sendNoteOn(64,127,midi_channel);
        if (DEBUG > 0) {
            Serial.println("------------------------TRIG---------");
        }
        trigger_sent = millis();
    } else {
        MIDI.sendNoteOff(64,127,midi_channel);
        if (DEBUG > 0) {
            Serial.println("(Note OFF)");
        }
        trigger_sent = 0;
    }
}

void check_hanging_notes() {
    if (trigger_sent) {
        if (millis() - trigger_sent > 2000) {
            trigger(false);
        }
    }
}

void battery_stats() {
    if (batt_level > batt_max) {
        batt_max = batt_level;
        preferences.putUInt("batt_max",batt_max);
    }
    if (batt_level < batt_min) {
        batt_min = batt_level;
        preferences.putUInt("batt_min",batt_min);
    }
}
// -----------------------------------------------------------------------------

void check_battery() {
    //Serial.println("I'm alive");
    batt_level = analogRead(PIN_AD_BATT);
    int batt;
    
    batt = map(batt_level, batt_min, batt_max, 0,127);
    batt = constrain(batt,0,127);
    
    MIDI.sendControlChange(2,batt,midi_channel);
}

void send_color() {
    MIDI.sendControlChange(3,team_color.r >> 1,midi_channel);
    MIDI.sendControlChange(4,team_color.g >> 1,midi_channel);
    MIDI.sendControlChange(5,team_color.b >> 1,midi_channel);
}

// -----------------------------------------------------------------------------

void check_hall() {
    static int thresh;
    int val = analogRead(PIN_SENS);
    int diff = abs(val - hall_val);
    hall_val = (hall_val + val) / 2;
    if (diff > 3) {
        thresh = (127 * thresh + diff) / 128;
    }
    
    if (DEBUG > 2) {
            Serial.print("Thresh: ");
            Serial.print(thresh);
            Serial.print(" diff: ");
            Serial.println(diff);
    }

  //  if (buzzer_status != STATUS_ARMED) return;
    if (diff > 10 * thresh) {
        trigger(true);
    }
}


// -----------------------------------------------------------------------------

void update_leds() {
    static char roundtrip;
    roundtrip++;
    
    switch (buzzer_status) {
    
        case STATUS_NO_WIFI:
            FastLED.setBrightness(20);
            fill_solid(pixel,NUM_PIXELS,CRGB::Blue);
            break;
            
        case STATUS_NO_MIDI_SESSION:
            FastLED.setBrightness(20);
            fill_solid(pixel,NUM_PIXELS,CRGB::Gold);
            break;
            
        case STATUS_READY:
            FastLED.setBrightness(30);
            fill_solid(pixel,NUM_PIXELS,team_color);
            break;
            
        case STATUS_ARMED:
            FastLED.setBrightness(beatsin8(42,50,190));  
            fill_solid(pixel,NUM_PIXELS,team_color);
            break;
            
        case STATUS_TRIGGERED:
            FastLED.setBrightness(255);
            fill_solid(pixel,NUM_PIXELS,CRGB(70,70,0));
            pixel[roundtrip%16 + 1] = CRGB::Yellow;
            pixel[(roundtrip + 8)%16 + 1] = CRGB::Yellow;
            break;
            
        default:
            fill_solid(pixel,NUM_PIXELS,CRGB::Blue);
            break;
    }
    FastLED.show(); 
}

// ====================================================================================
// SETUP
// ====================================================================================



void setup(){
    Serial.begin(115800);
    	FastLED.addLeds<SK6812, PIN_PIX, GRB>(pixel, NUM_PIXELS);

    FastLED.setBrightness(15);
    fill_solid(pixel,NUM_PIXELS,CRGB::Black);
    for (int i = 0; i < NUM_PIXELS; i = i + 3) {
        pixel[i] = CRGB::Blue;
    }
    FastLED.show(); 

    Serial.println("Hello");
    
    preferences.begin("anyma", false);
    buzzer_id = preferences.getUInt("buzzer_id", 0);
    DEBUG = preferences.getUInt("debug", 0);
    team_color.r = preferences.getUInt("r", 100);
    team_color.g = preferences.getUInt("g", 100);
    team_color.b = preferences.getUInt("b", 100);
    batt_max = preferences.getUInt("batt_max", 0);
    batt_min = preferences.getUInt("batt_min", 5000);
    Serial.print("Batt-Min: ");
    Serial.println(batt_min);
    Serial.print("Batt-Max: ");
    Serial.println(batt_max);
    

    hostname    = "buzzer_"+String(buzzer_id+1);
    midi_channel = buzzer_id + 1;
    
    WiFi.mode(WIFI_STA);
    wifiMulti.addAP("Anymair", "Mot de passe pas complique");
    wifiMulti.addAP("netplus-62051f", "y5sevr33");
    
    while (WiFi.status() != WL_CONNECTED) {
        wifiMulti.run();
        Serial.print(".");
        delay(250);
    }
    Serial.print("IP address: ");
    Serial.println(WiFi.localIP());
    Serial.println(hostname);

    if (!MDNS.begin(hostname.c_str())) {
        Serial.println("Error setting up MDNS responder!");
        while(1){
            delay(1000);
        }
    }
    buzzer_status = STATUS_NO_MIDI_SESSION;
    
    
    server.on("/set", HTTP_GET, [](AsyncWebServerRequest *request){
		String inputMessage;
		String replyMessage;
		if (request->hasParam("id")) {
				inputMessage = request->getParam("id")->value();
				Serial.println(inputMessage);
                buzzer_id = inputMessage.toInt();
                if (buzzer_id < 1) buzzer_id = 1;
                if (buzzer_id > NUM_BUZZERS) buzzer_id = NUM_BUZZERS;
                buzzer_id--;
                preferences.putUInt("buzzer_id", buzzer_id);
                midi_channel = buzzer_id + 1;
                hostname    = "buzzer_"+String(buzzer_id+1);
                team_color  = team_colors[buzzer_id];
                replyMessage += "Changed buzzer id to: "+String(buzzer_id + 1)+"\n";
                Serial.print(inputMessage);
		}
	    if (request->hasParam("debug")) {
	    		inputMessage = request->getParam("debug")->value();
                DEBUG = inputMessage.toInt();
                preferences.putUInt("debug", DEBUG);
                replyMessage += "Debug level: "+String(DEBUG)+"\n";

	    }
	    if (request->hasParam("r")) {
	    		inputMessage = request->getParam("r")->value();
                team_color.r = inputMessage.toInt();
                preferences.putUInt("r",   team_color.r);
                replyMessage += "Red level: "+String(team_color.r)+"\n";
                send_color();
	    }
	    if (request->hasParam("g")) {
	    		inputMessage = request->getParam("g")->value();
                team_color.g = inputMessage.toInt();
                preferences.putUInt("g",   team_color.g);
                replyMessage += "Green level: "+String(team_color.g)+"\n";
                send_color();

	    }
	    if (request->hasParam("b")) {
	    		inputMessage = request->getParam("b")->value();
                team_color.b = inputMessage.toInt();
                preferences.putUInt("b",   team_color.b);
                replyMessage += "Blue level: "+String(team_color.b)+"\n";
                send_color();
	    }

		request->send(200, "text/text", replyMessage);
	});

    AsyncElegantOTA.begin(&server);
    server.begin();

    MIDI.begin(1); // listen on channel 1
 	AppleMIDI.setHandleConnected(OnAppleMidiConnected);
  	AppleMIDI.setHandleDisconnected(OnAppleMidiDisconnected);
    MIDI.setHandleNoteOn(OnAppleMidiNoteOn);
    MIDI.setHandleNoteOff(OnAppleMidiNoteOff);

	MDNS.addService("apple-midi", "udp", AppleMIDI.getPort());
	MDNS.addService("http", "tcp", 80);
	Serial.println("Started AppleMIDI");

    fill_solid(pixel,NUM_PIXELS,CRGB::Black);
    for (int i = 0; i < NUM_PIXELS; i = i + 3) {
        pixel[i] = CRGB::Gold;
    }
    FastLED.show();

//    t.every(100,test);
    t.every(50,update_leds);
    t.every(30,check_hall);
    t.every(1000,check_hanging_notes);
    t.every(10000, check_battery);
    t.every(120000, battery_stats);
    //t.every(200,check_switch);

}

// ====================================================================================
// LOOP
// ====================================================================================

void loop() {
	t.update();
    MIDI.read();
}


// ====================================================================================
// Event handlers for incoming MIDI messages
// ====================================================================================

// -----------------------------------------------------------------------------
// rtpMIDI session. Device connected
// -----------------------------------------------------------------------------
void OnAppleMidiConnected(const ssrc_t & ssrc, const char* name) {
    buzzer_status = STATUS_READY;
    Serial.print(F("Connected to session "));
    Serial.println(name);
    delay(500);
    check_battery();
    send_color();
}

// -----------------------------------------------------------------------------
// rtpMIDI session. Device disconnected
// -----------------------------------------------------------------------------
void OnAppleMidiDisconnected(const ssrc_t & ssrc) {
  buzzer_status = STATUS_NO_MIDI_SESSION;
  Serial.println(F("Disconnected"));
}

// -----------------------------------------------------------------------------
//
// -----------------------------------------------------------------------------
static void OnAppleMidiNoteOn(byte channel, byte note, byte velocity) {
    if (DEBUG) {
        Serial.print(F("Incoming NoteOn  from channel: "));
        Serial.print(channel);
        Serial.print(F(", note: "));
        Serial.print(note);
        Serial.print(F(", velocity: "));
        Serial.println(velocity);
    }
    if (note == 63) buzzer_status = STATUS_READY;
    if (note == 64) buzzer_status = STATUS_ARMED;
    if (note == 65) {
        if (velocity == midi_channel) {
            buzzer_status = STATUS_TRIGGERED;
        } else {
            buzzer_status = STATUS_READY;
        }
    }
}

// -----------------------------------------------------------------------------
//
// -----------------------------------------------------------------------------
static void OnAppleMidiNoteOff(byte channel, byte note, byte velocity) {
    if (DEBUG) {
        Serial.print(F("Incoming NoteOff from channel: "));
        Serial.print(channel);
        Serial.print(F(", note: "));
        Serial.print(note);
        Serial.print(F(", velocity: "));
        Serial.println(velocity);
    }
}
