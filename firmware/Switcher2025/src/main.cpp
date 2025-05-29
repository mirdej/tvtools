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
#include <arduino-timer.h>
#include <SPI.h>
#include <ESPmDNS.h>
#include "FS.h"
#include <LittleFS.h>
// #include "ESPAsyncWebServer.h"
#include <Preferences.h>
#include <ArduinoJson.h>
#include <OTA.h>

#include <ATEMbase.h>
#include <ATEMmax.h>

#define ETH_CLK_MODE ETH_CLOCK_GPIO17_OUT
#define ETH_PHY_POWER 12

#include <ETH.h>

// ...........................................................................DEFFINES

#define BRIGHTNESS 120
/*
const int PIN_POT    	=   0;
const int PIN_PIXELS    =   1;
const int PIN_CS        = 	3;
const int PIN_SCK		= 2;
const int PIN_MISO		= 4;
const int PIN_MOSI	= 15;
*/

const int PIN_POT = 4;
const int PIN_PIXELS = 16;
const int PIN_CS = 5;
const int PIN_SCK = 14;
const int PIN_MISO = 2;
const int PIN_MOSI = 15;

const int NUM_PIXELS = 8;

#define WIFI_TIMEOUT 40000

#define STATE_OFFLINE 0
#define STATE_WIFI_OK 1
#define STATE_SWITCH_OK 2

#define IP1 192
#define IP2 168
#define IP3 252

//========================================================================================
//----------------------------------------------------------------------------------------
//																				GLOBALS
Preferences preferences;
int camera_count = 4;
int fixture[8];

int connection_state;

CRGB pixels[NUM_PIXELS];
auto t = timer_create_default(); // create a timer with default settings
int buttons_raw;
long last_ui_interaction;
String hostname = DEVICE_NAME;
;
/* AsyncWebServer server(80);
AsyncWebSocket ws("/ws");
 */
static bool eth_connected = false;

IPAddress switcherIp(IP1, IP2, IP3, 241);
IPAddress MainSwitcherIp(IP1, IP2, IP3, 245);
IPAddress local_IP(IP1, IP2, IP3, 200);
IPAddress gateway(IP1, IP2, IP3, 1);
IPAddress subnet(255, 255, 255, 0);
IPAddress primaryDNS(8, 8, 8, 8);   // optional
IPAddress secondaryDNS(8, 8, 4, 4); // optional
ATEMmax CamSwitcher;
ATEMmax MainSwitcher;


int greenscreen;

int on_air = -1;
int on_preview = -1;
int selected;
int fade_rate;

#define MODE_NORMAL 0
#define MODE_TALK_PREP 1
#define MODE_TALK 2
#define MODE_WATCH 3

int mode;

long talk_end;
boolean player_online = false;
boolean recorder_online = false;

char buf[] = "Hello this is an empty message with, a comma in it";

long secret_press_start;

void set_preview(int i);
void set_on_air(int i);

void service_BMD()
{
  if (!eth_connected)
    return;
  if (!CamSwitcher.hasInitialized())
  {
    CamSwitcher.runLoop();
    MainSwitcher.runLoop();
  }
  else
  {
    CamSwitcher.runLoop(5);
    MainSwitcher.runLoop(5);
  }
}

//----------------------------------------------------------------------------------------
//																		tally
bool check_tally(void *)
{
  if (!eth_connected)
    return true;
  on_air = CamSwitcher.getProgramInputVideoSource(0) - 1;
  on_preview = CamSwitcher.getPreviewInputVideoSource(0) - 1;
  if (on_air > -1)
    connection_state = STATE_SWITCH_OK;

  return true;
}

//----------------------------------------------------------------------------------------
//																		Prepare Talk
void prepare_talk()
{
  if (mode == MODE_TALK)
    return; // prevent double presses
  set_preview(0);
  set_on_air(1);

  CamSwitcher.setDownstreamKeyerFillSource(0, 7);
  CamSwitcher.setDownstreamKeyerKeySource(0, 10);
  CamSwitcher.setDownstreamKeyerPreMultiplied(0, true);
  CamSwitcher.setDownstreamKeyerOnAir(0, true);
  CamSwitcher.setAudioMixerInputMixOption(7, 1);

  mode = MODE_TALK_PREP;
}

void set_preview(int i)
{
  if (i < 0)
    return;
  if (i < camera_count)
  {
    if (i + 1 == greenscreen)
    {
      CamSwitcher.setPreviewInputVideoSource(0, 8);
      CamSwitcher.setKeyerFillSource(0, 0, greenscreen);
      CamSwitcher.setTransitionNextTransition(0, 3);
      // CamSwitcher.setKeyerOnAirEnabled(0,0,true);
    }
    else
    {
      CamSwitcher.setPreviewInputVideoSource(0, i + 1);
      CamSwitcher.setKeyerOnAirEnabled(0, 0, false);
      CamSwitcher.setTransitionNextTransition(0, 1);
    }
  }
}

void set_on_air(int i)
{
  if (i < 0)
    return;
  if (i < camera_count)
  {
    CamSwitcher.setProgramInputVideoSource(0, i + 1);
  }
}

bool check_buttons(void *)
{
  static long old_buttons;
  int temp;
  SPI.beginTransaction(SPISettings(80000, MSBFIRST, SPI_MODE0));
  digitalWrite(PIN_CS, LOW);
  delay(1);
  digitalWrite(PIN_CS, HIGH);
  buttons_raw = SPI.transfer(0x00);
  SPI.endTransaction();

  if (secret_press_start > 0)
  {
    if (millis() - secret_press_start > 3000)
    {
      Serial.println("SECRET LONGPRESS");
      CamSwitcher.setProgramInputVideoSource(0, 6);
      secret_press_start = 0;
    }
  }

  if (buttons_raw == old_buttons)
    return true;

  //	Serial.println(buttons_raw,BIN);

  long triggers_press = old_buttons & ~buttons_raw;
  long triggers_release = ~old_buttons & buttons_raw;
  old_buttons = buttons_raw;

  if (triggers_press == 0 && triggers_release == 0)
    return true;

  last_ui_interaction = millis();

  if (!eth_connected)
    return true;
  for (int i = 0; i < 8; i++)
  {
    if (triggers_press & (1 << i))
    {
      if (selected == 0)
      {
        if (i == 5)
        {
          Serial.println("SECRET PRESS");
          secret_press_start = millis();
        }
      }

      selected = i - 1;
      set_preview(selected);

      if (i == 7)
      {
        CamSwitcher.setTransitionMixRate(0, fade_rate);
        CamSwitcher.setTransitionStyle(0, 0);
        CamSwitcher.performAutoME(0);
      }

      if (i == 6)
      {
        CamSwitcher.performCutME(0);
      }
    }
    if (triggers_release & (1 << i))
    {
      selected = -1;
      if (secret_press_start > 0)
      {
        Serial.println("SECRET CLEAR");
        secret_press_start = 0;
      }
    }
  }
  return true;
}

//----------------------------------------------------------------------------------------
//																		pixels
bool update_pixels(void *)
{
  if (connection_state == STATE_OFFLINE)
  {
    for (int i = 0; i < NUM_PIXELS; i++)
    {
      if (selected == i)
        pixels[i] = CRGB::White;
      else
        pixels[i] = CRGB::Purple;
    }
  }

  if (connection_state == STATE_WIFI_OK)
  {
    for (int i = 0; i < NUM_PIXELS; i++)
    {
      if (selected == i)
        pixels[i] = CRGB::White;
      else
        pixels[i] = CRGB::Navy;
    }
  }

  if (connection_state == STATE_SWITCH_OK)
  {
    for (int i = 0; i < NUM_PIXELS; i++)
    {
      pixels[i] = 0x201D10;
      if (greenscreen - 1 == i)
      {
        if (on_preview == 7)
        {
          pixels[i] = CRGB::Green;
        }
        if (on_air == 7)
        {
          pixels[i] = CRGB::Red;
        }
      }
      if (on_preview == i)
        pixels[i] = CRGB::Green;
      if (on_air == i)
        pixels[i] = CRGB::Red;
      if (selected == i)
        pixels[i] = CRGB::White;
    }
  }
  FastLED.show();
  return true;
}

//----------------------------------------------------------------------------------------
//																		AD

bool check_ad(void *)
{
  signed int temp;
  static int fade_rate_avg;

  temp = analogRead(PIN_POT);
  temp /= 32;

  if (temp < 0)
    temp = 0;
  if (temp > 100)
    temp = 100;

  temp = (3 * fade_rate_avg + temp) / 4;
  fade_rate_avg = temp;
  fade_rate = temp;
  return true;
}

//----------------------------------------------------------------------------------------
//																process webpage template

//========================================================================================
//----------------------------------------------------------------------------------------
//																				Websocket

void restart()
{
  ESP.restart();
}

void dsk2(int on)
{
  if (on)
  {
    //		CamSwitcher.setAudioMixerInputMixOption(7, 1);
    MainSwitcher.setDownstreamKeyerFillSource(0, 1);
    MainSwitcher.setDownstreamKeyerKeySource(0, 2);
    MainSwitcher.setDownstreamKeyerPreMultiplied(0, true);
    MainSwitcher.setDownstreamKeyerOnAir(0, true);
    MainSwitcher.setProgramInputVideoSource(0,5);
    Serial.println("DSK2 On Air");
  }
  else
  {
    MainSwitcher.setDownstreamKeyerOnAir(0, false);
    Serial.println("DSK2 Off");
  }
}

void set_camera_settings()
{
return;
  File file = LittleFS.open("/settings.json");
  DynamicJsonDocument doc(2048);
  DeserializationError error = deserializeJson(doc, file);
  file.close();

  if (error)
  {
    Serial.println(F("Failed to read file, using default configuration"));
    return;
  }

  for (int cam = 0; cam < 5; cam++)
  {

    CamSwitcher.setCameraControlGain(cam + 1, doc["camera"][cam]["Gain"].as<int>());
    CamSwitcher.setCameraControlWhiteBalance(cam + 1, doc["camera"][cam]["Wb"].as<int>());
    /*     CamSwitcher.setCameraControlShutter(cam + 1, doc["camera"][cam]["Shutter"].as<int>());
        CamSwitcher.setCameraControlLumMix(cam + 1, doc["camera"][cam]["LumMix"].as<int>());
        CamSwitcher.setCameraControlContrast(cam + 1, doc["camera"][cam]["Contrast"].as<int>());
        CamSwitcher.setCameraControlSaturation(cam + 1, doc["camera"][cam]["Saturation"].as<int>());

        CamSwitcher.setCameraControlLiftY(cam + 1, doc["camera"][cam]["LiftY"].as<int>());
        CamSwitcher.setCameraControlGammaY(cam + 1, doc["camera"][cam]["GammaY"].as<int>());
        CamSwitcher.setCameraControlGainY(cam + 1, doc["camera"][cam]["GainY"].as<int>()); */
  }

  /* replyJsonDoc["camera"][cam]["Gain"] = CamSwitcher.getCameraControlGain(cam + 1);
  replyJsonDoc["camera"][cam]["Iris"] = CamSwitcher.getCameraControlIris(cam + 1);
  replyJsonDoc["camera"][cam]["Wb"] = CamSwitcher.getCameraControlWhiteBalance(cam + 1);
  replyJsonDoc["camera"][cam]["Shutter"] = CamSwitcher.getCameraControlShutter(cam + 1);
  replyJsonDoc["camera"][cam]["LumMix"] = CamSwitcher.getCameraControlLumMix(cam + 1);
  replyJsonDoc["camera"][cam]["Contrast"] = CamSwitcher.getCameraControlContrast(cam + 1);
  replyJsonDoc["camera"][cam]["Saturation"] = CamSwitcher.getCameraControlSaturation(cam + 1);
  replyJsonDoc["camera"][cam]["LiftY"] = CamSwitcher.getCameraControlLiftY(cam + 1);
  replyJsonDoc["camera"][cam]["GammaY"] = CamSwitcher.getCameraControlGammaY(cam + 1);
  replyJsonDoc["camera"][cam]["GainY"] = CamSwitcher.getCameraControlGainY(cam + 1); */
}

void get_camera_settings()
{
  DynamicJsonDocument replyJsonDoc(2048);

  replyJsonDoc["message"] = "camera_settings";
  JsonArray camlist = replyJsonDoc.createNestedArray("camera");
  for (int cam = 0; cam < 5; cam++)
  {
    replyJsonDoc["camera"][cam]["Gain"] = CamSwitcher.getCameraControlGain(cam + 1);
    replyJsonDoc["camera"][cam]["Iris"] = CamSwitcher.getCameraControlIris(cam + 1);
    replyJsonDoc["camera"][cam]["Wb"] = CamSwitcher.getCameraControlWhiteBalance(cam + 1);
    replyJsonDoc["camera"][cam]["Shutter"] = CamSwitcher.getCameraControlShutter(cam + 1);
    replyJsonDoc["camera"][cam]["LumMix"] = CamSwitcher.getCameraControlLumMix(cam + 1);
    replyJsonDoc["camera"][cam]["Contrast"] = CamSwitcher.getCameraControlContrast(cam + 1);
    replyJsonDoc["camera"][cam]["Saturation"] = CamSwitcher.getCameraControlSaturation(cam + 1);

    replyJsonDoc["camera"][cam]["LiftY"] = CamSwitcher.getCameraControlLiftY(cam + 1);
    replyJsonDoc["camera"][cam]["GammaY"] = CamSwitcher.getCameraControlGammaY(cam + 1);
    replyJsonDoc["camera"][cam]["GainY"] = CamSwitcher.getCameraControlGainY(cam + 1);

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
}

//----------------------------------------------------------------------------------------
//																				WifiEvent

void WiFiEvent(WiFiEvent_t event)
{
  switch (event)
  {
  case ARDUINO_EVENT_ETH_START:
    Serial.println("ETH Started");
    // set eth hostname here

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
    if (ETH.fullDuplex())
    {
      Serial.print(", FULL_DUPLEX");
    }
    Serial.print(", ");
    Serial.print(ETH.linkSpeed());
    Serial.println("Mbps");
    eth_connected = true;

    Serial.print("Wifi connected. IP: ");
    Serial.println(WiFi.localIP());

    if (!MDNS.begin(hostname.c_str()))
    {
      Serial.println("Error setting up MDNS responder!");
    }
    Serial.println("mDNS responder started");

    CamSwitcher.begin(switcherIp);
    MainSwitcher.begin(MainSwitcherIp);

    CamSwitcher.serialOutput(1);
    CamSwitcher.connect();
    MainSwitcher.connect();

    OTA::start(DEVICE_NAME);
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

void setup()
{

  FastLED.addLeds<NEOPIXEL, PIN_PIXELS>(pixels, NUM_PIXELS);

  for (int hue = 0; hue < 360; hue++)
  {
    fill_rainbow(pixels, NUM_PIXELS, hue, 7);
    delay(3);
    FastLED.show();
  }
  FastLED.setBrightness(BRIGHTNESS);

  Serial.begin(115200);
  Serial.println("Setup Start");

  pinMode(PIN_CS, OUTPUT);
  digitalWrite(PIN_CS, HIGH);
  SPI.begin(PIN_SCK, PIN_MISO, PIN_MOSI);

 /*  if (!LittleFS.begin())
  {
    Serial.println("An Error has occurred while mounting LittleFS");
    return;
  }
 */
  preferences.begin("anyma", false);
  camera_count = preferences.getInt("camera_count", 4);
  greenscreen = preferences.getInt("greenscreen", 3);

  Serial.print("Greenscreen: ");
  Serial.println(greenscreen);

  hostname = "switchbox";

  Serial.println("Looking for network");

  WiFi.onEvent(WiFiEvent);
  ETH.begin();
  ETH.config(local_IP, gateway, subnet, primaryDNS, secondaryDNS);

  while (!eth_connected)
  {
    Serial.print(".");
    delay(100);

    if (millis() > WIFI_TIMEOUT)
      break;
  }

  while (!CamSwitcher.hasInitialized())
  {
    CamSwitcher.runLoop();
    MainSwitcher.runLoop();
  }

  Serial.println();
  Serial.println("Atem Switcher connected");

  dsk2(1);
  set_camera_settings();

  t.every(100, check_tally);
  t.every(20, check_buttons);
  t.every(50, update_pixels);
  t.every(50, check_ad);

  // t.every(200,get_camera_settings);
}
//========================================================================================
//----------------------------------------------------------------------------------------
//																				loop

void loop()
{
  t.tick();
  service_BMD();
  OTA::handle();
}
