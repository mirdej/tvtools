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
#define NUM_FIXT 12
#define NUM_PARLED 6

#include <Arduino.h>
#include "FS.h"
#include <FastLED.h>

#include "AnymaEspSettings.h"
#include "AnymaEspNetworking.h"
#include "AnymaEspPins.h"
#include "AnymaESPUtils.h"

// TODO: Add FS Switch
#include <LittleFS.h>

#include <SPI.h>
#if ESPDMX
#include <esp_dmx.h>
#endif
#include "Fixture.h"
#include "Parled.h"

AnymaEspSettings settings;
AnymaEspNetworking networking;

#define DMX_PACKET_SIZE 513
SPIClass *hspi = NULL;

const int PIN_DMX_MISO = 5; // unused actually
const int PIN_DMX_MOSI = 15;
const int PIN_DMX_SCK = 16;
const int PIN_DMX_CS = 18;
const int PIN_SYNC = 21;
TaskHandle_t dmx_task_handle;

//----------------------------------------------------------------------------------------
//																				                                     User Globals

#define NUM_PIXELS 1
CRGB pixel[NUM_PIXELS];

#if ESPDMX
const dmx_port_t dmxPort = 2;
#endif

uint8_t dmx_data[DMX_PACKET_SIZE];
bool checking_fixtures;

Fixture f[NUM_FIXT];
Parled p[NUM_PARLED];
//----------------------------------------------------------------------------------------

void update()
{
  if (checking_fixtures)
    return;
  for (int i = 0; i < NUM_FIXT; i++)
  {
    f[i].update();
  }
  for (int i = 0; i < NUM_PARLED; i++)
  {
    p[i].update();
  }
  //   Serial.println();
}

//----------------------------------------------------------------------------------------
//																				                                      DMX Task

void IRAM_ATTR sync_interrupt()
{
  xTaskResumeFromISR(dmx_task_handle); // run calculate_frame_task() once on eack positive going sync
}

void dmx_task(void *pvParameters)
{

      static long start_micros;
    long elapsed;

  log_v("Setup DMX");

#if ESPDMX
  dmx_config_t dmxConfig = DMX_DEFAULT_CONFIG;
  dmx_param_config(dmxPort, &dmxConfig);
  dmx_set_pin(dmxPort, transmitPin, receivePin, enablePin);
  int queueSize = 0;
  int interruptPriority = 1;
  dmx_driver_install(dmxPort, DMX_MAX_PACKET_SIZE, queueSize, NULL,
                     interruptPriority);
  dmx_set_mode(dmxPort, DMX_MODE_WRITE);
  dmx_data[0] = 0;
/*
  dmx_config_t config = DMX_CONFIG_DEFAULT;
  dmx_personality_t personalities[] = {};
  int personality_count = 0;
  dmx_driver_install(dmxPort, &config, personalities, personality_count);
  dmx_set_pin(dmxPort, transmitPin, receivePin, enablePin);
 */
#else
  pinMode(PIN_DMX_CS, OUTPUT);
  digitalWrite(PIN_DMX_CS, HIGH);
  hspi = new SPIClass();
  hspi->begin(PIN_DMX_SCK, PIN_DMX_MISO, PIN_DMX_MOSI);
#endif

  log_v("DMX Set up. Running");

  while (1)
  {
    vTaskSuspend(NULL);
    update();
 // kick off transmission
        SPISettings mySettting(800000, MSBFIRST, SPI_MODE0);
        digitalWrite(PIN_DMX_CS, LOW);
        hspi->beginTransaction(mySettting);
        for (int i = 1; i < DMX_PACKET_SIZE; i++)
        {
            /*   if (i%4==0)hspi->transfer(255);
              else if (i%3==0)    hspi->transfer(127);
              else   */
            hspi->transfer(dmx_data[i]);
        }
        hspi->endTransaction();
        digitalWrite(PIN_DMX_CS, HIGH);


#if ESPDMX

    dmx_write_packet(dmxPort, dmx_data, DMX_MAX_PACKET_SIZE);
    dmx_send_packet(dmxPort, DMX_MAX_PACKET_SIZE);
    dmx_wait_send_done(dmxPort, DMX_PACKET_TIMEOUT_TICK);
#endif
    /*
        dmx_write(dmxPort, dmx_data, DMX_PACKET_SIZE);
        dmx_send_num(dmxPort, DMX_PACKET_SIZE);
        dmx_wait_sent(dmxPort, DMX_TIMEOUT_TICK);  */
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
  vTaskDelay(pdMS_TO_TICKS(4000));
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

  for (int i = 0; i < NUM_FIXT; i++)
  {
    f[i].setAddress(i + 1);
  }
  f[11].setAddress(16);

  for (int i = 0; i < NUM_PARLED; i++)
  {
    p[i].setAddress(3 * i + 24);
  }
  dmx_data[11 + 2] = 255;
  dmx_data[11 + 3] = 240;
  dmx_data[11 + 4] = 255;
  dmx_data[16 + 2] = 255;
  dmx_data[16 + 3] = 240;
  dmx_data[16 + 4] = 255;

  xTaskCreatePinnedToCore(
      dmx_task,  // Function that implements the task.
      "DMX-Out", // Text name for the task.
      8192,      // Stack size in words, not bytes.
      NULL,      // Parameter passed into the task.
      0,         // Priority at which the task is created.
      &dmx_task_handle,
      0 // Core where the task should run
  );

  attachInterrupt(digitalPinToInterrupt(PIN_SYNC), sync_interrupt, RISING);

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
