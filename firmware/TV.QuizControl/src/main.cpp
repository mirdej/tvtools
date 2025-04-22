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
#include "Agora.h"

//========================================================================================
//----------------------------------------------------------------------------------------
//																				GLOBALS

MIDIusb midi;

#define PIN_PIX 17
#define NUM_PIXELS 6
#define NOTIFICATION_INTERVAL 3000
#define MESSAGE_BATTERYLEVEL 44

CRGB pixel[NUM_PIXELS];

int triggered_buzzer = 0;

#define BUTTON_ARM_IDX 1
#define ARM_BUZZERS 0
#define DISARM_BUZZERS 122
#define NUM_BUZZERS 4

#define NUM_BTNS 6
const int PIN_BTN[NUM_BTNS] = {9, 10, 11, 12, 13, 1};
int last_btn[NUM_BTNS];
bool onair, playing;
void send_triggered_buzzer();

void update_leds()
{
  fill_solid(pixel, NUM_PIXELS, CRGB::SaddleBrown);
  if (triggered_buzzer == 0)
    pixel[1] = CRGB::Yellow;
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
    Serial.printf("%d %d %d %d\n", _mid[0], _mid[1], _mid[2], _mid[3]);
    if (_mid[1] == 144 && _mid[3] > 0)

    { // NOTE ON
      if (_mid[2] < NUM_BUZZERS + 1)
      {
        triggered_buzzer = _mid[2];
      }
      else if (_mid[2] < 14)
      {

        triggered_buzzer = DISARM_BUZZERS;
      }
      send_triggered_buzzer();
    }
  }
  else
  {
    log_e("failed to receive");
  }
}

void send_triggered_buzzer()
{
  uint8_t buf[1];
  buf[0] = triggered_buzzer;
  Agora.tell(buf, 1);
  midi.noteON(triggered_buzzer, 127);
  delay(100);
  midi.noteOFF(triggered_buzzer, 127);
}
//----------------------------------------------------------------------------------------
//                                      Agora Callback Function
void callback(const uint8_t *macAddr, const uint8_t *incomingData, int len)
{

  if (len == 2)
  {
    Serial.printf("Callback called %d %d\n", incomingData[0], incomingData[1]);
    if (triggered_buzzer == 0)
    {
      if (incomingData[0])
      {
        Serial.print("Trigger");
        triggered_buzzer = incomingData[1];
        Serial.println(triggered_buzzer);
        send_triggered_buzzer();
      }
    }
  }

  if (len == 3)
  {
    if (incomingData[0] == MESSAGE_BATTERYLEVEL)
    {
      midi.controlChange(incomingData[1],incomingData[2]);
    }
  }
}

//========================================================================================
//----------------------------------------------------------------------------------------
//																				SETUP

void setup()
{
  Serial.begin(115200);

  midi.product("TV-Quiz-Controller");
  midi.deviceID(0xdead, 0xbeed);
  onair = 1; // light "No Button Red"
  midi.manufacturer("[ a n y m a ]");
  midi.begin();

  FastLED.addLeds<SK6812, PIN_PIX, GRB>(pixel, NUM_PIXELS);
  FastLED.setBrightness(150);
  fill_solid(pixel, NUM_PIXELS, CRGB::Blue);
  FastLED.show();
  triggered_buzzer = DISARM_BUZZERS;

  Agora.begin("TV-Quiz-Controller");
  Agora.establish("tv-buzzers", callback);

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
  static long last_notification;
  if (millis() - last_notification > NOTIFICATION_INTERVAL)
  {
    send_triggered_buzzer();
    last_notification = millis();
  }
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
        Serial.println(i);

        if (i == BUTTON_ARM_IDX)
        {
          if (triggered_buzzer == 0)
          {
            triggered_buzzer = DISARM_BUZZERS;
          }
          else
          {
            triggered_buzzer = ARM_BUZZERS;
          }

          send_triggered_buzzer();
        }
        else
        {
          if (triggered_buzzer > 0 && triggered_buzzer != DISARM_BUZZERS)
          {
            triggered_buzzer = DISARM_BUZZERS;
            midi.noteON(i + 10, 127);
            delay(100);
            send_triggered_buzzer();
          }
        }
        pixel[i] = CRGB::White;
      }
      else
      {
        midi.noteOFF(i + 10);
      }
    }
  }
  FastLED.show();
}