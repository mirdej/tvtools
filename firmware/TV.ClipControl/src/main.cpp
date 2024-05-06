//========================================================================================
//----------------------------------------------------------------------------------------
//

//
//
//          Target MCU: Anyma ESP Ding -> ESP32-S3
//          Copyright:  2023 Michael Egger, me@anyma.ch
//          License:        This is FREE software (as in free speech, not necessarily free beer)
//                                  published under gnu GPL v.3
//
//----------------------------------------------------------------------------------------

#include "SD.h"
#include "midiusb.h"
#include <FastLED.h>

//========================================================================================
//----------------------------------------------------------------------------------------
//																				GLOBALS

#define TV_DEVICE_ID 2
// 0: Titler
// 1: Quiz
// 2: Clips

MIDIusb midi;

#define PIN_PIX 17
#define NUM_PIXELS 6

CRGB pixel[NUM_PIXELS];

#define NUM_BTNS 6
const int PIN_BTN[NUM_BTNS] = {9, 10, 11, 12, 13, 1};
int last_btn[NUM_BTNS];
bool onair, playing;

void update_leds()
{
  fill_solid(pixel, NUM_PIXELS, CRGB::SaddleBrown);
  if (onair)
    pixel[2] = CRGB::Red;
  else
    pixel[2] = CRGB::Green;
  if (playing)
    pixel[3] = CRGB::Red;
  else
    pixel[3] = CRGB::Green;
}

void tud_midi_rx_cb(uint8_t itf)
{
  uint8_t _mid[4] = {0};
  if (tud_midi_packet_read(_mid))
  {
    if ((_mid[1] >> 4) == 0x09)
    {
      if (_mid[2] == TV_DEVICE_ID * 10) {
        if (_mid[3])
          onair = 1;
          else 
          onair = 0;
      }
       if (_mid[2] == TV_DEVICE_ID * 10 + 1) {
        if (_mid[3])
          playing = 1;
          else 
          playing = 0;
      }
    } // note_on
      if ((_mid[1] >> 4) == 0x08)
    {
      if (_mid[2] == TV_DEVICE_ID * 10) {
          onair = 0;
      }
      if (_mid[2] == TV_DEVICE_ID * 10 + 1) {
          playing = 0;
      }
    } // note_off
  }
  else
    log_e("failed to receive");
}
//========================================================================================
//----------------------------------------------------------------------------------------
//																				SETUP

void setup()
{
  Serial.begin(115200);
  switch (TV_DEVICE_ID)
  {
  case 0:
    midi.product("TV-Title-Controller");
    midi.deviceID(0xdead, 0xbeef);
    break;
  case 1:
    midi.product("TV-Quiz-Controller");
    midi.deviceID(0xdead, 0xbeed);
    onair = 1;
    break;
  case 2:
    midi.product("TV-Clip-Controller");
    midi.deviceID(0xdead, 0xbeee);
    break;
  }
  midi.manufacturer("[ a n y m a ]");
  midi.begin();

  FastLED.addLeds<SK6812, PIN_PIX, GRB>(pixel, NUM_PIXELS);
  FastLED.setBrightness(150);
  fill_solid(pixel, NUM_PIXELS, CRGB::Blue);
  FastLED.show();

  for (int i = 0; i < NUM_BTNS; i++)
  {
    pinMode(PIN_BTN[i], INPUT_PULLUP);
  }
}

//========================================================================================
//----------------------------------------------------------------------------------------
//																				loop

void loop()
{
  delay(40);
  update_leds();
  for (int i = 0; i < NUM_BTNS; i++)
  {
    int btn = digitalRead(PIN_BTN[i]);
    if (btn != last_btn[i])
    {
      last_btn[i] = btn;
      if (!btn)
      {
        midi.noteON(i + 10 * TV_DEVICE_ID, 127);
        pixel[i] = CRGB::White;
      }
      else
      {
        midi.noteOFF(i + 10 * TV_DEVICE_ID);
      }
    }
  }
  FastLED.show();
}