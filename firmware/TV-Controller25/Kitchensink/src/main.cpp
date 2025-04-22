/*========================================================================================

[ a n y m a ]
S3 Base

© 2024 Michael Egger AT anyma.ch

==========================================================================================*/
//                                                                                      LIB
#include <Arduino.h>
#include <FastLED.h>
#include "Adafruit_MAX1704X.h"

//----------------------------------------------------------------------------------------
//                                                                                  CONFIG

#define MAIN_FILE_SYSTEM LittleFS

#define PIN_SCL 38
#define PIN_SDA 37
#define PIN_PIX 17
#define NUM_PIXELS 4
#define NUM_BTNS 4
const int PIN_BTN[NUM_BTNS] = {42, 41, 40, 39};

//----------------------------------------------------------------------------------------
//                                                                                 GLOBALS

CRGB pixel[NUM_PIXELS];
Adafruit_MAX17048 maxlipo;

//----------------------------------------------------------------------------------------
//																				                                        LED Task

void led_task(void *)
{

  FastLED.addLeds<SK6812, PIN_PIX, GRB>(pixel, NUM_PIXELS);
  FastLED.setBrightness(5);
  for (int hue = 0; hue < 360; hue++)
  {
    fill_rainbow(pixel, NUM_PIXELS, hue, 7);
    delay(5);
    FastLED.show();
  }

  log_v("Running Led task");

  while (1)
  {
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
      //Agora.tell(buf, 3);
    }
  }
}


//----------------------------------------------------------------------------------------
//																				                                      Button Task
void button_task(void *)
{
  int last_button_state[NUM_BTNS];
  int button_state;

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
        }
      }
    }
    vTaskDelay(pdMS_TO_TICKS(100));
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
