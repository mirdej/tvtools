/*========================================================================================

[ a n y m a ]
S3 BLINK

or: Maybe worlds most complicated Arduino Blink Sketch


© 2024 Michael Egger AT anyma.ch

==========================================================================================*/
//                                                                                      LIB

/* TODOs

- Is there still a memory leak when serving files??
- mDNS responder stops responding ?

*/

#include <Arduino.h>
#include "FS.h"
#include <FastLED.h>

#include "AnymaEspSettings.h"
#include "AnymaEspNetworking.h"
#include "AnymaEspPins.h"
#include "AnymaESPUtils.h"

// TODO: Add FS Switch
#include <LittleFS.h>

AnymaEspSettings settings;
AnymaEspNetworking networking;


//----------------------------------------------------------------------------------------
//																				                                     User Globals

#define NUM_PIXELS 1
CRGB pixel[NUM_PIXELS];

//----------------------------------------------------------------------------------------
//																				                                      Blink Task
void blink_task(void *)
{
  bool led_on;

  while (1)
  {
    if (led_on)
    {
      pixel[0] = CRGB::Black;
      led_on = false;
    }
    else
    {
      if (WiFi.status() == WL_CONNECTED)
      {
        pixel[0] = hexToColor(settings.blink_color.c_str());
      }
      else
      {
        pixel[0] = CRGB::Red;
      }
      led_on = true;
    }
    FastLED.show();
    vTaskDelay(pdMS_TO_TICKS(settings.blink_interval));
  }
}



#if __DEBUG_TASK_ENABLED
//----------------------------------------------------------------------------------------
//																				                                      Debug Task
oid debug_task(void *)
{
  int last_free_ram;
  multi_heap_info_t info;
  while (1)
  {
    heap_caps_get_info(&info, MALLOC_CAP_INTERNAL | MALLOC_CAP_8BIT);

    log_v("ram_free: %d, diff %d", info.total_free_bytes, info.total_free_bytes - last_free_ram);
    last_free_ram = info.total_free_bytes;

    vTaskDelay(pdMS_TO_TICKS(2000));
  };
}
#endif


//========================================================================================
//----------------------------------------------------------------------------------------
//																				                                           Setup

void setup()
{
  Serial.begin(115200);
  vTaskDelay(pdMS_TO_TICKS(1000));
  log_v("%s", PROJECT_PATH);
  log_v("Version %s", FIRMWARE_VERSION);

  log_v("________________________");
  log_v("Setup");
  FastLED.addLeds<SK6812, PIN_PIX, GRB>(pixel, NUM_PIXELS);
  FastLED.setBrightness(100);

  // Format if there is no Filesystem, Max open files = 10 for better Webserver stability
  MAIN_FILE_SYSTEM.begin(true, "/littlefs", 10U);
  file_list();
  settings.begin();
  networking.begin();

  xTaskCreate(
      blink_task, // Function that implements the task.
      "Blink",    // Text name for the task.
      8192,       // Stack size in words, not bytes.
      NULL,       // Parameter passed into the task.
      0,          // Priority at which the task is created.
      NULL);

#if __DEBUG_TASK_ENABLED
  xTaskCreate(
      debug_task, // Function that implements the task.
      "Debug",    // Text name for the task.
      8192,       // Stack size in words, not bytes.
      NULL,       // Parameter passed into the task.
      0,          // Priority at which the task is created.
      NULL);
#endif
  log_v("Setup Done");
  log_v("________________________");

  // log_v("blink time: %d",settings.blink_interval);
}

//========================================================================================
//----------------------------------------------------------------------------------------
//																				Loop

void loop()
{
  vTaskDelay(pdMS_TO_TICKS(30000)); // try not to starve idletask with senslessly looping trough nothing
}
