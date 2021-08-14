#include <Arduino.h>

#include <ESP8266WiFi.h>

#include <ESP8266WiFiMulti.h>

#include <ESP8266HTTPClient.h>

#include <WiFiClient.h>

ESP8266WiFiMulti WiFiMulti;


// Note! Https Request Doesn't work!

String botSite="http://markerbank.com/api3/bot21/bot.php";

String botKey="Your key goes here";

String botRequest;

String botText;




void setup() {

Serial.begin(115200);
Serial.println();
Serial.println();
Serial.println();


for (uint8_t t = 4; t > 0; t--) {

Serial.printf("[SETUP] WAIT %d...\n", t);
Serial.flush();
delay(1000);

}


WiFi.mode(WIFI_STA);

// Your WIFI ADRESS
WiFiMulti.addAP("Here-Goes-Your-Wifi-ID", "Password-for-Wifi");

}


void loop() {

// wait for WiFi connection

if ((WiFiMulti.run() == WL_CONNECTED)) {
WiFiClient client;
HTTPClient http;

// change to data you want to save

botText=String(random(123,9999));
botRequest=botSite+"?key="+botKey+"&tx="+botText+"&par=1";

// par 1 is used to save data
// par 2 is used to read data


Serial.print("[HTTP] begin...\n");

if (http.begin(client, botRequest)) { // HTTP

Serial.print("[HTTP] GET...\n");

// start connection and send HTTP header

int httpCode = http.GET();

// HTTP code will be negative on error

if (httpCode > 0) {

// HTTP header has been send and Server response header has been handled

Serial.printf("[HTTP] GET... code: %d\n", httpCode);

// file found at the server

if (httpCode == HTTP_CODE_OK || httpCode == HTTP_CODE_MOVED_PERMANENTLY) {

String payload = http.getString();
Serial.println(payload);

}

} else {
Serial.printf("[HTTP] GET... failed, error: %s\n", http.errorToString(httpCode).c_str());
}
http.end();

} else {
Serial.printf("[HTTP} Unable to connect\n");
}

}
// it delays for 10 seconds
delay(10000);

}
