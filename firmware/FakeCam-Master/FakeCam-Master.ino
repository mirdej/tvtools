#include <HTTPClient.h>
#include <SPIFFS.h>
#include <FastLED.h>
#include <WiFi.h>
#include "ESPAsyncWebServer.h"
#include <ESPmDNS.h>
#include <WiFiAP.h>

#define LED_BUILTIN 2   // Set the GPIO pin where you connected your test LED or comment this line out if your dev board has a built-in LED

const int NUM_PIXELS    =   3;
const int PIN_PIXELS    =   13;

#define MY_TALLY 1

// Set these to your desired credentials.
const char *ssid = "Cam-Attrappe";
const char *password = "camattrappe";

AsyncWebServer                          server(80);
CRGB                                    pixels[NUM_PIXELS];


void notify(int n) {

/*
    HTTPClient http;
    http.begin("http://cam_2.local/2"); //Specify the URL
    http.setTimeout(5000);
    int httpCode = http.GET();                                        //Make the request

    if (httpCode > 0) { //Check for the returning code
 
            String payload = http.getString();
            Serial.println(httpCode);
            Serial.println(payload);
 
    }else {
 
          Serial.println("Error on HTTP request");
 
    }
    http.end();
*/
}


void tally(int n){
    Serial.println(n,DEC);    
    if (n == MY_TALLY) {
        fill_solid(pixels, NUM_PIXELS, CRGB::Red);   
    }  else {  
        fill_solid(pixels, NUM_PIXELS, CRGB::Black);     
    }
    FastLED.show();
    
   // notify(n);
}


void setup() {
    pinMode(LED_BUILTIN, OUTPUT);
    FastLED.addLeds<NEOPIXEL, PIN_PIXELS>(pixels, NUM_PIXELS);

    Serial.begin(115200);
    Serial.println();
    Serial.println("Configuring access point...");

    // You can remove the password parameter if you want the AP to be open.
    WiFi.softAP(ssid, password);
    IPAddress myIP = WiFi.softAPIP();
    Serial.print("AP IP address: ");
    Serial.println(myIP);
    
    if (!MDNS.begin("Tally")) {
         Serial.println("Error setting up MDNS responder!");
    }
    Serial.println("mDNS responder started");

   if(!SPIFFS.begin(true)){
        Serial.println("An Error has occurred while mounting SPIFFS");
        return;
   }
    server.on("/", HTTP_GET, [](AsyncWebServerRequest *request){
        Serial.println("Home");    
        //request->send(200, "text/text", "Hello");
        request->send(SPIFFS, "/index.html");
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

   server.on("/src/bootstrap.bundle.min.js", HTTP_GET, [](AsyncWebServerRequest *request){
        request->send(SPIFFS, "/src/bootstrap.bundle.min.js", "text/javascript");
    });

    server.on("/src/jquery-3.4.1.min.js", HTTP_GET, [](AsyncWebServerRequest *request){
        request->send(SPIFFS, "/src/jquery-3.4.1.min.js", "text/javascript");
    });

    server.on("/src/bootstrap.min.css", HTTP_GET, [](AsyncWebServerRequest *request){
        request->send(SPIFFS, "/src/bootstrap.min.css", "text/css");
    });

    server.on("/rc/bootstrap4-toggle.min.js", HTTP_GET, [](AsyncWebServerRequest *request){
        request->send(SPIFFS, "rc/bootstrap4-toggle.min.js", "text/javascript");
    });

    server.on("/src/bootstrap4-toggle.min.css", HTTP_GET, [](AsyncWebServerRequest *request){
        request->send(SPIFFS, "/src/bootstrap4-toggle.min.css", "text/css");
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