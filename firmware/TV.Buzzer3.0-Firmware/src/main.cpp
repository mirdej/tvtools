//----------------------------------------------------------------------------------------
//
//	TV-Buzzer Firmware
//
//		Target MCU: ESP32-C3-Mini
//		Copyright:	2022-2025 Michael Egger, me@anyma.ch
//		License: 	This is FREE software (as in free speech, not necessarily free beer)
//					published under gnu GPL v.3
//
//
//----------------------------------------------------------------------------------------

#include <Preferences.h>
#include <Arduino.h>
#include <FastLED.h>
#include <Agora.h>
#include "Adafruit_MAX1704X.h"

#define PIN_BTN 2
#define PIN_AD_1 3
#define PIN_AD_2 4
#define PIN_SERVO 5
#define PIN_PIX 7
#define PIN_SCL 9
#define PIN_SDA 10

#define NUM_PIXELS 17
#define DEBUG 2

#define NUM_BUZZERS 4
#define MESSAGE_POWERSAVE 123
#define MESSAGE_BATTERYLEVEL 44

#define STATUS_STARTUP 0
#define STATUS_LOST_CONNECTION 1
#define STATUS_READY 2
#define STATUS_ARMED 3
#define STATUS_TRIGGERED 4
#define STATUS_POWERSAVE 5

#define SLEEP_TIMEOUT 20000
#define uS_TO_S_FACTOR 1000000ULL // Conversion factor for micro seconds to seconds

// -----------------------------------------------------------------------------
//                                                              Globals
const CRGB team_colors[] = {CRGB(255, 0, 200),
                            CRGB(50, 0, 200),
                            CRGB(0, 255, 200),
                            CRGB(0, 255, 100),
                            CRGB(70, 200, 10)};

int buzzer_status = STATUS_STARTUP;
uint8_t buzzer_id = 0;
int polarity = 0;

CRGB team_color;
CRGB pixel[NUM_PIXELS];
int interrupt_counter;
Preferences preferences;
String hostname;
int hall_val;
int channel;
long trigger_sent = 0;
int trigger_max_deviation;
long last_message_from_master;
Adafruit_MAX17048 maxlipo;

TaskHandle_t button_task_handle;

// Method to print the reason by which ESP32 has been awaken from sleep
void print_wakeup_reason()
{
  esp_sleep_wakeup_cause_t wakeup_reason;

  wakeup_reason = esp_sleep_get_wakeup_cause();

  switch (wakeup_reason)
  {
  case ESP_SLEEP_WAKEUP_EXT0:
    Serial.println("Wakeup caused by external signal using RTC_IO");
    break;
  case ESP_SLEEP_WAKEUP_EXT1:
    Serial.println("Wakeup caused by external signal using RTC_CNTL");
    break;
  case ESP_SLEEP_WAKEUP_TIMER:
    Serial.println("Wakeup caused by timer");
    break;
  case ESP_SLEEP_WAKEUP_TOUCHPAD:
    Serial.println("Wakeup caused by touchpad");
    break;
  case ESP_SLEEP_WAKEUP_ULP:
    Serial.println("Wakeup caused by ULP program");
    break;
  case ESP_SLEEP_WAKEUP_GPIO:
    Serial.println("Wakeup caused by GPIO");
    break;

  default:
    Serial.printf("Wakeup was not caused by deep sleep: %d\n", wakeup_reason);
    break;
  }
}

// -----------------------------------------------------------------------------
//                                                              Button

void IRAM_ATTR pressed()
{
  // BaseType_t taskYieldRequired = 0;
  interrupt_counter++;
  // taskYieldRequired = xTaskResumeFromISR(button_task_handle);
  if (xTaskResumeFromISR(button_task_handle)) // If the taskYield is reuiqred then trigger the same.
  {
    taskYIELD();
  }
}

bool isPressed()
{
  return (!digitalRead(PIN_BTN));
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

void button_task(void *)
{
  // pinMode(PIN_BTN, INPUT_PULLUP);  // there is an external pullup on this pin
  attachInterrupt(digitalPinToInterrupt(PIN_BTN), pressed, FALLING);
  long last_wake;

  while (1)
  {
    vTaskSuspend(NULL); // wait to be woken
    Serial.println(last_wake);
    if (millis() - last_wake > 200)
    { // debounce
      // Serial.println("------------TRIIGGGG");
      trigger(1);
    }
    last_wake = millis();
  }
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

      uint8_t buf[3];
      buf[0] = MESSAGE_BATTERYLEVEL;
      buf[1] = buzzer_id;
      buf[2] = (uint8_t)(maxlipo.cellPercent());
      Agora.tell(buf, 3);
    }
  }
}

// -----------------------------------------------------------------------------

void led_task(void *)
{
  static char roundtrip;

  FastLED.addLeds<SK6812, PIN_PIX, GRB>(pixel, NUM_PIXELS);
  FastLED.setBrightness(5);
  fill_solid(pixel, NUM_PIXELS, CRGB::Black);
  FastLED.show();
  while (1)
  {
    delay(50);

    roundtrip++;
    if ((last_message_from_master > 0) && (millis() - last_message_from_master > 4000))
    {
      buzzer_status = STATUS_LOST_CONNECTION;
    }

    switch (buzzer_status)
    {

    case STATUS_STARTUP:
      FastLED.setBrightness(5);
      fill_solid(pixel, NUM_PIXELS, CRGB::Black);
      pixel[8] = CRGB::Blue;
      break;

    case STATUS_LOST_CONNECTION:
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
      fill_solid(pixel, NUM_PIXELS, CRGB(20, 20, 0));
      pixel[roundtrip % 16 + 1] = CRGB::Yellow;
      pixel[(roundtrip + 8) % 16 + 1] = CRGB::Yellow;
      break;

    default:
      fill_solid(pixel, NUM_PIXELS, CRGB::Blue);
      break;
    }

    if (isPressed() && buzzer_status != STATUS_TRIGGERED)
    {
      fill_solid(pixel, NUM_PIXELS, CRGB::Gray);
    }
    FastLED.show();
  }
}

// ====================================================================================
//                                                          AGORA Callback

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
      /*  preferences.putUInt("r", team_color.r);
       preferences.putUInt("g", team_color.g);
       preferences.putUInt("b", team_color.b); */
    }
  }
}

// -----------------------------------------------------------------------------
//                                                              SETUP
// -----------------------------------------------------------------------------

void setup()
{

  Serial.begin(115200);
  Serial.println("Hello from [ a n y m a ]");

  preferences.begin("anyma", false);
  preferences.putUInt("buzzer_id", 4);

  buzzer_id = preferences.getUInt("buzzer_id", 1);
  if (buzzer_id == 0)
    buzzer_id = 1;

  team_color = team_colors[buzzer_id - 1];
  hostname = "buzzer_" + String(buzzer_id);
  Serial.println(hostname);

  xTaskCreate(battery_task, "Battery", 4096, NULL, 0, NULL);
  xTaskCreate(led_task, "Leds", 4096, NULL, 0, NULL);
  xTaskCreate(button_task, "Button", 4096, NULL, 0, &button_task_handle);

  Agora.begin(hostname.c_str());
  Agora.join("tv-buzzers", callback);

  // Print the wakeup reason for ESP32
  print_wakeup_reason();

  esp_sleep_enable_timer_wakeup(120 * uS_TO_S_FACTOR);
  esp_deep_sleep_enable_gpio_wakeup((1 << PIN_BTN), ESP_GPIO_WAKEUP_GPIO_LOW);

  Serial.println("Setup Done");
}

// -----------------------------------------------------------------------------
//                                                              LOOP
// -----------------------------------------------------------------------------

void loop()
{
  delay(4000);

  if (millis() - last_message_from_master > SLEEP_TIMEOUT)
  {
    // go to sleep
    Serial.println("Going to sleep now. Bye.");

    esp_wifi_stop();
    fill_solid(pixel, NUM_PIXELS, CRGB::Black);
    FastLED.show();
    esp_deep_sleep_start();
  }
}
