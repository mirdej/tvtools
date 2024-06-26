#ifndef __ANYMA_ESP_API_INCLUDED__
#define __ANYMA_ESP_API_INCLUDED__

#include "WiFi.h"
#include "AnymaEspSettings.h"
#include "AnymaESPUtils.h"
#include "ArduinoJson.h"
#include <aWOT.h>
#include "MimeTypes.h"
#include "Parled.h"
#include "Fixture.h"
#include <ETH.h>

extern Application app;

#define __APP_USE_CORS_HEADERS 1
// set to 1 to be able to run a development server on a remote machine
/*Cross-origin resource sharing (CORS) is a mechanism for integrating applications.
CORS defines a way for client web applications that are loaded in one domain to interact with resources in a different domain.
*/

extern Parled p[NUM_PARLED];
extern Fixture f[NUM_FIXT];
extern uint8_t dmx_data[DMX_PACKET_SIZE];
extern bool checking_fixtures;

int currentColors = -1;
int currentScene = -1;

//--------------------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------------------

void setup_api()
{
        //--------------------------------------------------------------------------------------------------------------------------------
        //-------------------------------------------------------------------------------------------------------------------------- GET
        app.get("/api/status", [](Request &req, Response &res)
                {              
                JsonDocument doc;
                doc["colors"] = currentColors;
                doc["scene"] = currentScene;
                res.status(200);
                res.set("Content-Type", "application/json");
                serializeJson(doc, req); 
                res.end(); });

        app.get("/api/colorsets", [](Request &req, Response &res)
                { serveJsonFile("/colorsets.json", req, res); });

        app.get("/api/scenes", [](Request &req, Response &res)
                { serveJsonFile("/scenes.json", req, res); });

        app.get("/api/colorset/load/:id", [](Request &req, Response &res)
                {
                                        checking_fixtures = false;

            char id[10];

            req.route("id", id, 10);
            int n = atoi(id);
                log_v("Load Colorset %d", n);

                File file = MAIN_FILE_SYSTEM.open("/data/colorsets.json", FILE_READ);
                if (!file)
                {
                log_e("- failed to open file for reading");
                return;
                }

                JsonDocument doc;
                deserializeJson(doc, file);

                JsonArray levels = doc[n]["colors"];
                int i = 0;
                for (JsonVariant item : levels) {
                        CRGB col = hexToColor(item);
                        float r,g,b;
                        r = (float)col.r/255.;
                        g = (float)col.g/255.;
                        b = (float)col.b/255.;
                        p[i++].startFade(r,g,b,2.);
                }

                currentColors = n;
            res.status(204);
            res.end(); });

        app.get("/api/scene/load/:id", [](Request &req, Response &res)
                {
                checking_fixtures = false;

                char id[10];

                req.route("id", id, 10);
                int n = atoi(id);
                        log_v("Load Scene %d", n);

                File file = MAIN_FILE_SYSTEM.open("/data/scenes.json", FILE_READ);
                if (!file)
                {
                log_e("- failed to open file for reading");
                return;
                }

                JsonDocument doc;
                deserializeJson(doc, file);

                JsonArray levels = doc[n]["levels"];
                int i = 0;
                for (JsonVariant item : levels) {
                       // log_v ("Level %d: %f",i,item.as<float>()/100.);
                        f[i++].startFade(item.as<float>()/100., 2.);
                }
                currentScene = n;
                res.status(204);
                res.end(); });

        //-------------------------------------------------------------------
        app.get("/api/reboot", [](Request &req, Response &res)
                {
              res.status(204);
              res.set("Content-Type", "application/json");
              res.end(); 
              xTaskCreate(reboot_task, "Reboot",    4096,       NULL,     0,          NULL); });

        app.get("/api/settings", [](Request &req, Response &res)
                {
              res.status(200);
              res.set("Content-Type", "application/json");
              serializeJson(settings.get_json(), req); 
              res.end(); });

        app.get("/api/deviceinfo", [](Request &req, Response &res)
                {
              JsonDocument doc;

              doc["message"] = "deviceinfo";
              doc["firmware"] = PROJECT_PATH;
              doc["version"] = FIRMWARE_VERSION;

              doc["chip"] = ESP.getChipModel();
              doc["chip_rev"] = ESP.getChipRevision();
              doc["chip_cores"] = ESP.getChipCores();
              doc["chip_fcpu"] = ESP.getCpuFreqMHz();
              doc["sdk_version"] = ESP.getSdkVersion();

              doc["flash_size"] = ESP.getFlashChipSize();
              doc["flash_speed"] = ESP.getFlashChipSpeed();
              doc["flash_mode"] = ESP.getFlashChipMode();
              doc["flash_free_sketch_space"] = ESP.getFreeSketchSpace();

              doc["hostname"] = settings.hostname;

#if USE_ETHERNET
                doc["ip"] = ETH.localIP().toString();
                doc["mac"] = ETH.macAddress();
#else
              doc["ip"] = WiFi.localIP().toString();
              doc["mac"] = WiFi.macAddress();
#endif
              doc["millis"] = millis();

              multi_heap_info_t info;
              heap_caps_get_info(&info, MALLOC_CAP_INTERNAL | MALLOC_CAP_8BIT);

              doc["ram_free"] = info.total_free_bytes;
              doc["ram_lowest"] = info.minimum_free_bytes;
              doc["ram_largest_free_block"] = info.largest_free_block;

              doc["psram_size"] = ESP.getPsramSize();
              doc["psram_free"] = ESP.getFreePsram();
              doc["psram_max_alloc"] = ESP.getMaxAllocPsram();

              doc["fs_used"] = LittleFS.usedBytes();
              doc["fs_total"] = LittleFS.totalBytes();

              res.status(200);
              res.set("Content-Type", "application/json");
              serializeJson(doc, req); 
              res.end(); });

        //--------------------------------------------------------------------------------------------------------------------------------
        //-------------------------------------------------------------------------------------------------------------------------- PUT

        app.put("/api/colorsets", [](Request &req, Response &res)

                { writeJSONFile("/colorsets.json", req, res); });

        app.put("/api/scenes", [](Request &req, Response &res)

                { writeJSONFile("/scenes.json", req, res); });
        //------------------------------------------------------------------------------

        app.put("/api/color/:id/:color", [](Request &req, Response &res)
                {
                                        checking_fixtures = false;

            char id[10];
            char color[10];

            req.route("id", id, 10);
            req.route("color", color, 10);
            int n = atoi(id);
            n %= NUM_PARLED;

            CRGB col = hexToColor(color);
            float r,g,b;
            r = (float)col.r/255.;
            g = (float)col.g/255.;
            b = (float)col.b/255.;
            p[n].startFade(r,g,b,0);
           // log_v("Color %d: %d %d %d", n,col.r,col.g,col.b);
            res.status(204);
            res.end(); });

        //------------------------------------------------------------------------------

        app.put("/api/channel/:id/:level", [](Request &req, Response &res)
                {
                checking_fixtures = false;

            char id[10];
            char level[10];

            req.route("id", id, 10);
            req.route("level", level, 10);
            int n = atoi(id);
            n %= NUM_FIXT;
        
            int l = atoi(level);
            float fl = (float)l / 100.;

              //  log_v("Fixt %d: %f", n,f);
            f[n].startFade(fl, 0.);

            res.status(204);
            res.end(); });

        //------------------------------------------------------------------------------

        app.put("/api/check/:addr", [](Request &req, Response &res)
                {
                char addr[10];

                req.route("addr", addr, 10);

                checking_fixtures = true;
                for (int i = 0; i < DMX_PACKET_SIZE; i++) {
                        dmx_data[i]= 0;
                }

                if (strcmp(addr,"stage") == 0) {

                                for (int i = 1; i < 12; i++) {
                                dmx_data[i] = 255;	
                                }
                                dmx_data[16] = 255;	

                } else  if (strcmp(addr,"backdrop") == 0) {

                                for (int i = 0; i < 6; i++) {
                                dmx_data[24 + (3*i)] = 255;	
                                }

                }  else  if (strcmp(addr,"all") == 0) {

                                for (int i = 1; i < 12; i++) {
                                dmx_data[i] = 255;	
                                }
                                dmx_data[16] = 255;	
                                for (int i = 0; i < 6; i++) {
                                dmx_data[24 + (3*i)] = 255;	
                                }

                }  else  if (strcmp(addr,"off") == 0) {
                        ;
                } else { 
                        
                        int n = atoi(addr);
                        n %= DMX_PACKET_SIZE;
                        dmx_data[n]= 255;
                }
                res.status(204);
                res.end(); });

        //------------------------------------------------------------------------------

        app.put("/api/settings", [](Request &req, Response &res)
                {
              JsonDocument doc;
              DeserializationError error = deserializeJson(doc, req);
              // Test if parsing succeeds.
              if (error)
              {
                log_e("DeserializeJson() failed: %s", error.f_str());
                res.sendStatus(500);
                return;
              }
              //serializeJson(doc, Serial);

              SETTING_AS_STRING(hostname)
              SETTING_AS_STRING(ssid)
              SETTING_AS_STRING(pass)

              SETTING_AS_COLORSTRING(blink_color)
              SETTING_AS_INT(blink_interval)
              
              settings.dirty = true;
              res.sendStatus(204);
              res.end(); });
}

#endif