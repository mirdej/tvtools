/*========================================================================================

[ a n y m a ]
S3 Base

© 2024 Michael Egger AT anyma.ch

==========================================================================================*/
//                                                                                      LIB
#include <Arduino.h>
#include <FastLED.h>
#include "Adafruit_MAX1704X.h"
#include <Agora.h>

//----------------------------------------------------------------------------------------
//                                                                                  CONFIG

#define MAIN_FILE_SYSTEM LittleFS

#define PIN_SCL 38
#define PIN_SDA 37
#define PIN_PIX 17
#define NUM_PIXELS 10
#define NUM_BTNS 10
const int PIN_BTN[NUM_BTNS] = {39, 40, 42, 41, 4, 5, 6, 7, 15, 16};

//----------------------------------------------------------------------------------------
//                                                                                 GLOBALS

CRGB pixel[NUM_PIXELS];
CRGB pixel_buf[NUM_PIXELS];
Adafruit_MAX17048 maxlipo;

//----------------------------------------------------------------------------------------
//																				                                        LED Task

void led_task(void *)
{

  FastLED.addLeds<SK6812, PIN_PIX, GRB>(pixel, NUM_PIXELS);
  FastLED.setBrightness(250);
  for (int hue = 0; hue < 360; hue++)
  {
    fill_rainbow(pixel, NUM_PIXELS, hue, 7);
    delay(5);
    FastLED.show();
  }
  fill_solid(pixel, NUM_PIXELS, CRGB::DarkBlue);
  fill_solid(pixel_buf, NUM_PIXELS, CRGB::DarkBlue);

  log_v("Running Led task");

  while (1)
  {
    for (int i = 0; i < NUM_BTNS; i++)
    {
      if (!digitalRead(PIN_BTN[i]))
      {
        pixel[i] = CRGB::LightCyan;
      }
      else
      {
        pixel[i] = pixel_buf[i];
      }
    }
    FastLED.show();
    vTaskDelay(pdMS_TO_TICKS(40)); // ~25 fps display
  }

  vTaskDelete(NULL); // we never get here
}

// -----------------------------------------------------------------------------

void battery_task(void *)
{
  float cellVoltage;

  Wire.begin(PIN_SDA, PIN_SCL);

  while (!maxlipo.begin())
  {
    Serial.println(F("Couldnt find Adafruit MAX17048?\nMake sure a battery is plugged in!"));
    delay(2000);
  }

  while (1)
  {
    vTaskDelay(pdMS_TO_TICKS(15000));
    cellVoltage = maxlipo.cellVoltage();
    if (isnan(cellVoltage))
    {
      Serial.println("Failed to read cell voltage, check battery is connected!");
    }
    else
    {
      Serial.print(F("Batt Voltage: "));
      Serial.print(cellVoltage, 3);
      Serial.println(" V");
      Serial.print(F("Batt Percent: "));
      Serial.print(maxlipo.cellPercent(), 1);
      Serial.println(" %");
      Serial.println();

      /*       uint8_t buf[3];
            buf[0] = MESSAGE_BATTERYLEVEL;
            buf[1] = buzzer_id;
            buf[2] = (uint8_t)(maxlipo.cellPercent()); */
      // Agora.tell(buf, 3);
    }
  }
}

//----------------------------------------------------------------------------------------
//																				                                      Button Task
void button_task(void *)
{
  int last_button_state[NUM_BTNS];
  int button_state;
  uint8_t buf[2];

  for (int i = 0; i < NUM_BTNS; i++)
  {
    pinMode(PIN_BTN[i], INPUT_PULLUP);
    last_button_state[i] = digitalRead(PIN_BTN[i]);
  }

  log_v("Running Button task");
  while (1)
  {
    for (int i = 0; i < NUM_BTNS; i++)
    {
      button_state = digitalRead(PIN_BTN[i]);
      if (button_state != last_button_state[i])
      {
        last_button_state[i] = button_state;
        if (!button_state)
        {
          Serial.printf("Button %d pressed\n", i);
          buf[0] = 127;
        }
        else
        {
          buf[0] = 0;
        }
        buf[1] = 100 + i;
        Agora.tell(buf, 2);
      }
    }
    vTaskDelay(pdMS_TO_TICKS(100));
  }
}

// ====================================================================================
//                                                          AGORA Callback

void callback(const uint8_t *macAddr, const uint8_t *incomingData, int len)
{
  if (len == 3)
  {
    if (incomingData[0] == 176)
    {
      if (incomingData[1] > 99)
      {
        int n = incomingData[1] - 100;
        int c = n % 3;
        n = n / 3;
        n %= NUM_PIXELS;
        if (c == 0)
        {
          pixel_buf[n].r = incomingData[2];
        }
        else if (c == 1)
        {
          pixel_buf[n].g = incomingData[2];
        }
        else
        {
          pixel_buf[n].b = incomingData[2];
        }
      }
      /*  preferences.putUInt("r", team_color.r);
       preferences.putUInt("g", team_color.g);
       preferences.putUInt("b", team_color.b); */
    }
  }
}

//========================================================================================
//----------------------------------------------------------------------------------------
//																				                                           Setup

void setup()
{
  Serial.begin(115200);
  vTaskDelay(pdMS_TO_TICKS(1000));

  log_v("________________________");
  log_v("Setup");

  xTaskCreate(led_task, "LED Task", 8192, NULL, 1, NULL);
  xTaskCreate(button_task, "Button", 8192, NULL, 2, NULL);
  xTaskCreate(battery_task, "Battery", 4096, NULL, 0, NULL);

  Agora.begin("Talkcontrol");
  Agora.join("tv-buzzers", callback);

  log_v("Setup Done");
  log_v("________________________");
}

//========================================================================================
//----------------------------------------------------------------------------------------
//																				Loop

void loop()
{
  vTaskDelay(pdMS_TO_TICKS(10));
}
