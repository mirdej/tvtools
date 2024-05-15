#ifndef __ANYMA_ESP_UTILS_INCLUDED__
#define __ANYMA_ESP_UTILS_INCLUDED__


#include "LittleFS.h"
#include "AnymaEspSettings.h"

#define DATAROOT "/data"
#define DATA_BUFFER_SIZE 512


/** ------------------------------------------------------------------------------------------------------------------------------------
 * @brief  Serve static files from MAIN_FILE_SYSTEM
 *
 *
 *
 * @param  req          aWot Request
 * @param  res          aWot Response
 */
void serveJsonFile(const char *path, Request &req, Response &res)
{
  long timestamp;
  char local_path[120];
  strcpy(local_path, DATAROOT);
  strcat(local_path, path);

  log_v("Request file %s -> %s", path, local_path);

  if (!MAIN_FILE_SYSTEM.exists(local_path))
  {
    res.status(404);
    res.end();
    return;
  }

  File file = MAIN_FILE_SYSTEM.open(local_path);

  if (file.isDirectory())
  {
    file.close();
    res.status(404);
    res.end();
    return;
  }

  timestamp = millis();
  uint8_t readBuffer[DATA_BUFFER_SIZE];
  res.status(200);
  res.set("Content-Type", "application/json");

  size_t length = file.size();

  while (length)
  {
    size_t toRead = length > DATA_BUFFER_SIZE ? DATA_BUFFER_SIZE : length;
    file.read(readBuffer, toRead);
    res.write(readBuffer, toRead);
    length = length - toRead;
    taskYIELD();
  }
  log_v("Took: %dms", millis() - timestamp);
  file.close();
  res.end();
}
//-------------------------------------------------------------------------------------------------------------------------- WRITE JSON
void writeJSONFile(const char *path, Request &req, Response &res)
{
  char local_path[120];
  JsonDocument doc;
  DeserializationError error = deserializeJson(doc, req);
  // Test if parsing succeeds.
  if (error)
  {
    log_e("DeserializeJson() failed: %s", error.f_str());
    res.sendStatus(500);
    return;
  }
  strcpy(local_path, DATAROOT);
  strcat(local_path, path);

  File file = MAIN_FILE_SYSTEM.open(local_path, FILE_WRITE);

  if (!file)
  {
    log_e("- failed to open file for writing");
    res.sendStatus(500);
    res.end();
    return;
  }

  size_t bytes_written = serializeJson(doc["params"], file);
  file.close();

  if (bytes_written)
  {
    log_i("Wrote %d bytes to %s", bytes_written, SETTINGS_FILE_PATH);
  }
  else
  {
    log_e("File write failed");
    res.sendStatus(500);
    res.end();
    return;
  }

  res.sendStatus(204);
  res.end();
}



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