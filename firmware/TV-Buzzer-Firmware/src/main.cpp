//----------------------------------------------------------------------------------------
//
//	TV-Buzzer Firmware
//
//		Target MCU: ESP32-S3 DEV MODULE
//		Copyright:	2022 Michael Egger, me@anyma.ch
//		License: 	This is FREE software (as in free speech, not necessarily free beer)
//					published under gnu GPL v.3
//
//
//----------------------------------------------------------------------------------------

#include <Preferences.h>
#include <arduino-timer.h>
#include <FastLED.h>

#include "SPI.h"
#include <Agora.h>

#define CALIBRATE_TIME 2000
#define BUZZER_SAMPLE_INTERVAL 10
#define PIN_PIX 17
#define PIN_AD_BATT 2
#define PIN_SENS 1
#define NUM_PIXELS 17

#define NUM_BUZZERS 4
#define MESSAGE_POWERSAVE 123

#define STATUS_NO_WIFI 0
#define STATUS_NOT_CONNECTED 1
#define STATUS_READY 2
#define STATUS_ARMED 3
#define STATUS_TRIGGERED 4
#define STATUS_POWERSAVE 5

int DEBUG = 3;

const CRGB team_colors[] = {CRGB(255, 0, 200),
                            CRGB(50, 0, 200),
                            CRGB(0, 255, 200),
                            CRGB(0, 255, 100)};
int batt_max, batt_min;
int batt_level;

int buzzer_status = STATUS_NO_WIFI;
uint8_t buzzer_id = 0;

CRGB pixel[NUM_PIXELS];

CRGB team_color;
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

Preferences preferences;

auto t = timer_create_default(); // create a timer with default settings
String hostname;
int hall_val;
int channel;
long calibrate_hall_until = CALIBRATE_TIME;
long trigger_sent = 0;
int trigger_max_deviation;
long last_message_from_master;

void test()
{
  // Serial.println("I'm alive");
  //    MIDI.sendNoteOn(2,64,1);
  Serial.println(hall_val);
}

void trigger(bool on)
{
  uint8_t buf[2];
  buf[1] = buzzer_id;

  if (on)
  {
    buf[0] = 127;

    if (DEBUG > 0)
    {
      Serial.println("------------------------TRIG---------");
    }
    trigger_sent = millis();
  }
  else
  {
    buf[0] = 0;
    if (DEBUG > 0)
    {
      Serial.println("(Note OFF)");
    }
    trigger_sent = 0;
  }
  Agora.tell(buf, 2);
}

bool check_hanging_notes(void *)
{
  if (trigger_sent)
  {
    if (millis() - trigger_sent > 2000)
    {
      trigger(false);
    }
  }
  return true; // repeat? true
}

// -----------------------------------------------------------------------------

bool check_hall(void *)
{
  static int trigger_resting;
  static int triggered;
  float dev;

  int hall_val = analogRead(PIN_SENS);

  if (millis() < calibrate_hall_until)
  {
    if (trigger_resting == 0)
    {
      trigger_resting = hall_val;
      trigger_max_deviation = 0;
    }
    else
    {
      trigger_resting = (7 * trigger_resting + hall_val) / 8;
    }

    int trigger_deviation = abs(hall_val - trigger_resting);
    if (trigger_deviation > trigger_max_deviation)
    {
      trigger_max_deviation = trigger_deviation;
      if (trigger_max_deviation == 0)
        trigger_max_deviation = 1; // prevent divide by zero
    }
  }
  else
  {

    if (calibrate_hall_until)
    {
      Serial.printf("Calibrated: Trigger Resting %d, Deviation %d\n", trigger_resting, trigger_max_deviation);
      calibrate_hall_until = 0;
    }

    if (buzzer_status != STATUS_ARMED)
      return true;

    dev = abs(hall_val - trigger_resting) / trigger_max_deviation;
    if (dev > 1.8)
    {
      Serial.println(hall_val);

      if (triggered == 5)
      {
        trigger(true);
        Serial.println("Note ON");
      }
      triggered++;
    }
    else
    {
      if (dev < 1.2)
      {
        triggered = 0;
      }
    }
  }

  return true; // repeat? true
}

// -----------------------------------------------------------------------------

bool update_leds(void *)
{
  static char roundtrip;
  roundtrip++;
  if (millis() - last_message_from_master > 4000)
  {
    buzzer_status = STATUS_NOT_CONNECTED;
  }

  switch (buzzer_status)
  {

  case STATUS_NO_WIFI:
    FastLED.setBrightness(20);
    fill_solid(pixel, NUM_PIXELS, CRGB::Blue);
    break;

  case STATUS_NOT_CONNECTED:
    FastLED.setBrightness(20);
    fill_solid(pixel, NUM_PIXELS, CRGB::Red);
    break;

  case STATUS_READY:
    FastLED.setBrightness(30);
    fill_solid(pixel, NUM_PIXELS, team_color);
    break;

  case STATUS_ARMED:
    FastLED.setBrightness(beatsin8(42, 50, 190));
    fill_solid(pixel, NUM_PIXELS, team_color);
    break;

  case STATUS_POWERSAVE:
    FastLED.setBrightness(10);
    fill_solid(pixel, NUM_PIXELS, CRGB::Black);
    pixel[1] = team_color;
    pixel[14] = team_color;
    break;

  case STATUS_TRIGGERED:
    FastLED.setBrightness(255);
    fill_solid(pixel, NUM_PIXELS, CRGB(70, 70, 0));
    pixel[roundtrip % 16 + 1] = CRGB::Yellow;
    pixel[(roundtrip + 8) % 16 + 1] = CRGB::Yellow;
    break;

  default:
    fill_solid(pixel, NUM_PIXELS, CRGB::Blue);
    break;
  }
  FastLED.show();
  return true; // repeat? true
}

// ====================================================================================
//                                                          AGORA Callbacl

void callback(const uint8_t *macAddr, const uint8_t *incomingData, int len)
{
  // Serial.printf("Message from a Member: %s\n", incomingData);
  if (len == 1)
  {
    if (incomingData[0] == 0)
    {
      buzzer_status = STATUS_ARMED;
    }
    else if (incomingData[0] == buzzer_id)
    {
      buzzer_status = STATUS_TRIGGERED;
    }
    else if (incomingData[0] == MESSAGE_POWERSAVE)
    {
      buzzer_status = STATUS_POWERSAVE;
    }
    else
    {
      buzzer_status = STATUS_READY;
      /*    calibrate_hall_until = millis() + CALIBRATE_TIME;
         trigger_max_deviation = 1; */
    }
    last_message_from_master = millis();
  }
  else if (len == 4)
  {
    if (incomingData[0] == buzzer_id)
    {
      team_color.r = incomingData[1];
      team_color.g = incomingData[2];
      team_color.b = incomingData[3];
      preferences.putUInt("r", team_color.r);
      preferences.putUInt("g", team_color.g);
      preferences.putUInt("b", team_color.b);
    }
  }
}

// ====================================================================================
// SETUP
// ====================================================================================

void setup()
{
  Serial.begin(115800);
  FastLED.addLeds<SK6812, PIN_PIX, GRB>(pixel, NUM_PIXELS);

  FastLED.setBrightness(15);
  fill_solid(pixel, NUM_PIXELS, CRGB::Black);
  for (int i = 0; i < NUM_PIXELS; i = i + 3)
  {
    pixel[i] = CRGB::Blue;
  }
  FastLED.show();

  Serial.println("Hello");

  preferences.begin("anyma", false);
  buzzer_id = preferences.getUInt("buzzer_id", 1);
  if (buzzer_id == 0)
    buzzer_id = 1;
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

  hostname = "buzzer_" + String(buzzer_id);

  Agora.begin(hostname.c_str());
  Agora.join("tv-buzzers", callback);

  buzzer_status = STATUS_NOT_CONNECTED;

  fill_solid(pixel, NUM_PIXELS, CRGB::Black);
  for (int i = 0; i < NUM_PIXELS; i = i + 3)
  {
    pixel[i] = CRGB::Gold;
  }
  FastLED.show();

  calibrate_hall_until = millis() + CALIBRATE_TIME;

  //    t.every(100,test);
  t.every(50, update_leds);
  t.every(5, check_hall);
  t.every(1000, check_hanging_notes);
  // t.every(10000, check_battery);
  // t.every(120000, battery_stats);
  //  t.every(200,check_switch);
}

// ====================================================================================
// LOOP
// ====================================================================================

void loop()
{
  t.tick();
}