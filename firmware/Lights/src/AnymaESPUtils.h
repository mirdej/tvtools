#ifndef __ANYMA_ESP_UTILS_INCLUDED__
#define __ANYMA_ESP_UTILS_INCLUDED__


#include "LittleFS.h"
#include "AnymaEspSettings.h"


/** ------------------------------------------------------------------------------------------------------------------------------------
 * @brief  Serve static files from MAIN_FILE_SYSTEM
 *
 *
 *
 * @param  req          aWot Request
 * @param  res          aWot Response
 */
void file_list()
{
  File root, foundfile;

  root = MAIN_FILE_SYSTEM.open("/");
  if (root)
  {
    foundfile = root.openNextFile();
    while (foundfile)
    {
      log_v("File: %s Size %d", foundfile.name(), foundfile.size()); // force copy
      foundfile = root.openNextFile();
    }
    root.close();
    foundfile.close();
  }
}


String colorToHex(CRGB col)
{
  char buf[6];
  sprintf(buf, "%02X%02X%02X", col.r, col.g, col.b);
  return String(buf);
}

CRGB hexToColor(const char *s)
{
  uint32_t res = strtol(s, NULL, 16);
  return CRGB(res);
}


String sanitizeColorInput(String s)
{
  char buf[7];
  s.toLowerCase();
  s.toCharArray(buf, 6);
  for (int i = 0; i < 6; i++)
  {
    if ((buf[i] < '0' || buf[i] > '9') &&
        (buf[i] < 'a' || buf[i] > 'f'))
    {
      buf[i] = '0';
    }
  }
  buf[6] = 0;
  return String(buf);
}


void reboot_task(void *) {
  settings.write();
  log_i("Rebooting in 2 seconds");
  vTaskDelay(pdMS_TO_TICKS(2000));
  ESP.restart();
}

#endif