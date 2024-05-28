#ifndef __ANYMA_ESP_NETWWORKING_INCLUDED__
#define __ANYMA_ESP_NETWWORKING_INCLUDED__

#define USE_ETHERNET 1


#include <Arduino.h>
#include <Preferences.h>

#include "FS.h"
#include <LittleFS.h>

#include <ArduinoJson.h>
#include <WiFi.h>
#include <WiFiMulti.h>
#include <aWOT.h>
#include "MimeTypes.h"
#include <ESPmDNS.h>

#include "AnymaEspSettings.h"
#include "AnymaEspAPI.h"

#include "ESP-FTP-Server-Lib.h"
#include "FTPFilesystem.h"

#if USE_ETHERNET
#include <SPI.h>
#include "driver/spi_master.h"
#include <ETH.h>

const int PIN_CS = 14;
const int PIN_SCK = 13;
const int PIN_MISO = 12;
const int PIN_MOSI = 11;
const int PIN_INT = 10;
const int W5500_RST_PORT = 9;
#endif


#define ANYMA_ESP_SERVICE_NAME "anyma_esp32"
#define ANYMA_ESP_SERVICE_PORT 3101

#define WEBROOT "/webroot"
#define READ_BUFFER_SIZE 4096
const char *NTP_SERVER = "pool.ntp.org";
const char *TZ_STRING = "CET-1CEST,M3.5.0/2,M10.5.0/3";

WiFiMulti wifiMulti;
FTPServer ftp;
WiFiServer server(80);
Application app;

struct AnymaEspNetworking
{
public:
    void begin();
    int num_client_connections = 0;

private:
};

extern AnymaEspNetworking networking;

#if __APP_USE_CORS_HEADERS
void cors_headers(Request &req, Response &res)
{
    res.set("Access-Control-Allow-Origin", "*");
    res.set("Access-Control-Allow-Methods", "GET, POST, PUT, HEAD, OPTIONS");
    res.set("Access-Control-Allow-Headers", "Content-Type");
    //  log_v("_____________________\nPath %s, Method %d", req.path(), req.method());
    // res.status(204);
    if (req.method() == 7)
        res.sendStatus(204);
}
#endif

const char *indexFile = "/index.html";

/** ------------------------------------------------------------------------------------------------------------------------------------
 * @brief  Serve static files from MAIN_FILE_SYSTEM
 *
 *
 *
 * @param  req          aWot Request
 * @param  res          aWot Response
 */
void fileServer(Request &req, Response &res)
{
    long timestamp;
    if (req.method() != Request::GET)
    {
        return;
    }

    const char *path = req.path();

    if (strcmp(path, "/") == 0)
    {
        path = indexFile;
    }

    char local_path[120];
    strcpy(local_path, WEBROOT);
    strcat(local_path, path);

    log_v("Request file %s -> %s", path, local_path);

    if (!MAIN_FILE_SYSTEM.exists(local_path))
    {
        return;
    }

    File file = MAIN_FILE_SYSTEM.open(local_path);

    if (file.isDirectory())
    {
        file.close();
        return;
    }

    timestamp = millis();
    uint8_t readBuffer[READ_BUFFER_SIZE];
    const char *mimeType = MimeTypes::getType(file.name());
    res.set("Content-Type", mimeType);

    size_t length = file.size();

    while (length)
    {
        size_t toRead = length > READ_BUFFER_SIZE ? READ_BUFFER_SIZE : length;
        file.read(readBuffer, toRead);
        res.write(readBuffer, toRead);
        length = length - toRead;
        // log_v("%d",length);
        // vTaskDelay(pdMS_TO_TICKS(1));
        taskYIELD();
    }
    log_v("Took: %dms", millis() - timestamp);
    file.close();
    res.end();
}

String escapedMac()
{
    String s = WiFi.macAddress();
    s.replace(":", "");
    s.toLowerCase();
    return s;
}

void findFriends()
{
    int n = MDNS.queryService(ANYMA_ESP_SERVICE_NAME, "tcp");
    if (n == 0)
    {
        Serial.println("no friends found");
    }
    else
    {

        JsonDocument doc;

        Serial.print(n);
        Serial.println(" service(s) found");
        for (int i = 0; i < n; ++i)
        {
            JsonObject server_info;
            ;
            server_info["name"] = String(MDNS.hostname(i));
            Serial.println(MDNS.hostname(i));

            server_info["ip"] = String(MDNS.IP(i).toString());
            server_info["port"] = String(MDNS.port(i));
            doc.add(server_info);
        }

        char data[2084];
        size_t len = serializeJson(doc, Serial);
    }
}

//----------------------------------------------------------------------------------------

#if USE_ETHERNET

bool setup_w5500()
{
  long startTime = millis();
  log_v("Setup network");

  WiFi.begin();
  WiFi.disconnect();

  //	ETH.config(local_IP, gateway, subnet);

  tcpip_adapter_set_default_eth_handlers();

  // Initialize TCP/IP network interface (should be called only once in application)
  ESP_ERROR_CHECK(esp_netif_init());
  esp_netif_config_t cfg = ESP_NETIF_DEFAULT_ETH();
  esp_netif_t *eth_netif = esp_netif_new(&cfg);
  // Set default handlers to process TCP/IP stuffs
  ESP_ERROR_CHECK(esp_eth_set_default_handlers(eth_netif));

  esp_eth_mac_t *eth_mac = NULL;
  esp_eth_phy_t *eth_phy = NULL;

  gpio_install_isr_service(0);

  spi_bus_config_t buscfg = {
      .mosi_io_num = PIN_MOSI,
      .miso_io_num = PIN_MISO,
      .sclk_io_num = PIN_SCK,
      .quadwp_io_num = -1,
      .quadhd_io_num = -1,
  };
  ESP_ERROR_CHECK(spi_bus_initialize(SPI2_HOST, &buscfg, SPI_DMA_CH_AUTO));

  spi_device_handle_t spi_handle = NULL;
  spi_device_interface_config_t devcfg = {
      .command_bits = 16, // Actually it's the address phase in W5500 SPI frame
      .address_bits = 8,  // Actually it's the control phase in W5500 SPI frame
      .mode = 0,
      .clock_speed_hz = 12 * 1000 * 1000,
      .spics_io_num = PIN_CS,
      .queue_size = 20};
  ESP_ERROR_CHECK(spi_bus_add_device(SPI2_HOST, &devcfg, &spi_handle));
  /* w5500 ethernet driver is based on spi driver */
  eth_w5500_config_t w5500_config = ETH_W5500_DEFAULT_CONFIG(spi_handle);
  w5500_config.int_gpio_num = PIN_INT;

  eth_mac_config_t mac_config = ETH_MAC_DEFAULT_CONFIG();
  eth_phy_config_t phy_config = ETH_PHY_DEFAULT_CONFIG();
  phy_config.reset_gpio_num = W5500_RST_PORT;
  phy_config.reset_timeout_ms = 3000;

  eth_mac = esp_eth_mac_new_w5500(&w5500_config, &mac_config);
  if (eth_mac == NULL)
  {
    log_e("esp_eth_mac_new_esp32 failed");
    return false;
  }

  eth_phy = esp_eth_phy_new_w5500(&phy_config);
  if (eth_phy == NULL)
  {
    log_e("esp_eth_phy_new failed");
    return false;
  }

  esp_eth_config_t eth_config = ETH_DEFAULT_CONFIG(eth_mac, eth_phy);
  esp_eth_handle_t eth_handle = NULL;
  log_v("Got here");

  ESP_ERROR_CHECK(esp_eth_driver_install(&eth_config, &eth_handle));
log_v("Got here too");

  uint8_t macArr[] = {0x02, 0x00, 0x00, 0x12, 0x34, 0x56};
  ESP_ERROR_CHECK(esp_eth_ioctl(eth_handle, ETH_CMD_S_MAC_ADDR, macArr));

  /* attach Ethernet driver to TCP/IP stack */
  ESP_ERROR_CHECK(esp_netif_attach(eth_netif, esp_eth_new_netif_glue(eth_handle)));
  /* start Ethernet driver state machine */
  ESP_ERROR_CHECK(esp_eth_start(eth_handle));

  // FIXED IP
  /*
      esp_netif_dhcpc_stop(eth_netif);
      esp_netif_ip_info_t ip_info;
      IP4_ADDR(&ip_info.ip, 10, 2, 1, 22);
      IP4_ADDR(&ip_info.gw, 10, 2, 1, 1);
      IP4_ADDR(&ip_info.netmask, 255, 255, 255, 0);
      esp_netif_set_ip_info(eth_netif, &ip_info);
      */
  log_v("Done. Time taken %d", millis() - startTime);
  return true;
}
#endif



//----------------------------------------------------------------------------------------
//																				                                       WiFi Task
void TaskClientSocket(void *pvParameters)
{
    WiFiClient clientHandle = *((WiFiClient *)pvParameters);
    int client_id = networking.num_client_connections++;

    if (clientHandle.connected())
    {
        //   log_v("New Client Connected. Client#: %d", client_id);
        app.process(&clientHandle);
        clientHandle.stop();
    }
    //  log_v("Client #%d disconnected", client_id);
    networking.num_client_connections--;
    vTaskDelete(NULL);
}

void wifi_task(void *)
{
    long last_mdns_lookup; //= millis();
    configTime(0, 0, NTP_SERVER);
    setenv("TZ", TZ_STRING, 1);
    tzset();



    WiFi.config(INADDR_NONE, INADDR_NONE, INADDR_NONE, INADDR_NONE);
    WiFi.setHostname(settings.hostname.c_str());

    WiFi.mode(WIFI_STA);
    WiFi.setSleep(false); // better resonsiveness, more power consumption
    // wifiMulti.addAP(settings.ssid.c_str(), settings.pass.c_str());
    wifiMulti.addAP("Anymair", "Mot de passe pas complique");

    while (WiFi.status() != WL_CONNECTED)
    {
        wifiMulti.run();
        vTaskDelay(pdMS_TO_TICKS(250));
    }
    log_i("IP address: %s", WiFi.localIP().toString().c_str());

#if USE_ETHERNET
    setup_w5500();
#endif


    // From WLED:
    //  "end" must be called before "begin" is called a 2nd time
    //  see https://github.com/esp8266/Arduino/issues/7213
    MDNS.end();

    if (!MDNS.begin(settings.hostname.c_str()))
    {
        log_e("Error setting up MDNS responder!");
    }
    else
    {
        log_i("mDNS responder started");
        log_i("Hostname: %s", settings.hostname);
        MDNS.addService("http", "tcp", 80);
        MDNS.addService("ftp", "tcp", 21);
        MDNS.addService(ANYMA_ESP_SERVICE_NAME, "tcp", ANYMA_ESP_SERVICE_PORT);
        MDNS.addServiceTxt(ANYMA_ESP_SERVICE_NAME, "tcp", "mac", escapedMac().c_str());
    }

    // setup_webserver();
    findFriends();

#if __APP_USE_CORS_HEADERS
    app.use(&cors_headers);
#endif

    setup_api();
    app.get(&fileServer);

    server.begin();

    log_i("Webserver started.");

    ftp.addUser(FTP_USER, FTP_PASSWORD);
    ftp.addFilesystem("LittleFS", &LittleFS);
    ftp.begin();
    log_i("FTP server started.");

    while (1)
    {
        if (WiFi.status() == WL_CONNECTED)
        {

            if (millis() - last_mdns_lookup > 60000)
            {
                findFriends();
                last_mdns_lookup = millis();
            }

            ftp.handle();

            WiFiClient client = server.available();
            if (client.connected())
            {
                app.process(&client);
            }

            vTaskDelay(pdMS_TO_TICKS(1));
        }
        else
        {
            Serial.println("[WIFI] Connecting");
            WiFi.reconnect();
            vTaskDelay(pdMS_TO_TICKS(1000));
        }
    }
}

void AnymaEspNetworking::begin()
{

    /*  xTaskCreatePinnedToCore(
                                wifi_task, "WIFI", 16384, NULL, 1, NULL, 0); */

    xTaskCreate(
        wifi_task,    // Function that implements the task.
        "WIFI-Setup", // Text name for the task.
        16384,        // Stack size in words, not bytes.
        NULL,         // Parameter passed into the task.
        0,            // Priority at which the task is created.
        NULL);
}





#endif