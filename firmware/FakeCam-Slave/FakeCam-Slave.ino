#include <FastLED.h>
#include <WiFi.h>
#include "ESPAsyncWebServer.h"
#include <ESPmDNS.h>

#define LED_BUILTIN 2   // Set the GPIO pin where you connected your test LED or comment this line out if your dev board has a built-in LED

const int NUM_PIXELS    =   3;
const int PIN_PIXELS    =   13;

#define MY_TALLY 4
#define MY_HOSTNAME "Cam_4"

// Set these to your desired credentials.
const char *ssid = "Cam-Attrappe";
const char *password = "camattrappe";

AsyncWebServer                          server(80);
CRGB                                    pixels[NUM_PIXELS];


void tally(int n){
    Serial.println(n,DEC);    
    if (n == MY_TALLY) {
        fill_solid(pixels, NUM_PIXELS, CRGB::Red);   
    }  else {  
        fill_solid(pixels, NUM_PIXELS, CRGB::Black);     
    }
    FastLED.show();
}


void setup() {
    pinMode(LED_BUILTIN, OUTPUT);
    FastLED.addLeds<NEOPIXEL, PIN_PIXELS>(pixels, NUM_PIXELS);

    Serial.begin(115200);
    Serial.println();
    Serial.println("Configuring access point...");

    // You can remove the password parameter if you want the AP to be open.
    WiFi.begin(ssid, password);
    long start_time = millis();
    while (WiFi.status() != WL_CONNECTED) { 
        if ((millis()-start_time) > 60000) {
           fill_solid(pixels, NUM_PIXELS, CRGB::Violet);   
            FastLED.show();
            return;
        }
	}


    
    if (!MDNS.begin(MY_HOSTNAME)) {
         Serial.println("Error setting up MDNS responder!");
    }
    Serial.println("mDNS responder started");

    server.on("/", HTTP_GET, [](AsyncWebServerRequest *request){
        Serial.println("Home");    
        //request->send(200, "text/text", "Hello");
        request->send(200, "text/text", "Hello");
    });

    server.on("/1", HTTP_GET, [](AsyncWebServerRequest *request){
        tally(1);
        request->send(200, "text/text", "1");
    });

    server.on("/2", HTTP_GET, [](AsyncWebServerRequest *request){
        tally(2);
        request->send(200, "text/text", "2");
    });

    server.on("/3", HTTP_GET, [](AsyncWebServerRequest *request){
        tally(3);
        request->send(200, "text/text", "3");
    });

    server.on("/4", HTTP_GET, [](AsyncWebServerRequest *request){
        tally(4);
        request->send(200, "text/text", "4");
    });

  server.begin();

   //blink three times to show we're ready
    for (int i = 0; i < 3; i++) {
        fill_solid(pixels, NUM_PIXELS, CRGB::Blue);   
        FastLED.show();
        delay(250);
        fill_solid(pixels, NUM_PIXELS, CRGB::Black);   
        FastLED.show();
        delay(250);
    }



}

void loop() {
}