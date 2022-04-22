#include <WiFi.h>
#include "DHT.h"
#include "AzureIotHub.h"
#include "Esp32MQTTClient.h"

#define INTERVAL 2000
#define DEVICE_ID "ESP32Device"
#define MESSAGE_MAX_LEN 256

float pH;
float temp;
float pressure;

int binary();
void tayang();


const char* ssid     = "Insignes 2.4GHz"; // Name of your Wi-Fi Network.
const char* password = "pra-uusm"; // WiFi Password

int messageCount = 1;

static const char* connectionString = "HostName=InnovateFPGA-IoTHub-AP089biogas.azure-devices.net;DeviceId=ESP32SensorMonitoring;SharedAccessKey=zD6BR7x8fRGz9fZe/xcxNeidOs9NzIEpw62ytjjBU1Q=";

const char *messageData = "{\"deviceId\":\"%s\", \"messageId\":%d, \"pH\":%f, \"temp\":%f, \"pressure\":%f}"; 

static bool hasWifi = false;
static bool messageSending = true;

static uint64_t send_interval_ms;

static void InitWifi()
{
  //Serial.println("Connecting...");

  WiFi.begin(ssid, password);
  
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    //Serial.print(".");
  }
  
  hasWifi = true;
  
  //Serial.println("WiFi connected");
  
  //Serial.println("IP address: ");
  //Serial.println(WiFi.localIP());
}

static void SendConfirmationCallback(IOTHUB_CLIENT_CONFIRMATION_RESULT result)
{
  if (result == IOTHUB_CLIENT_CONFIRMATION_OK)
  {
    //Serial.println("Send Confirmation Callback finished.");
  }
}

// Arduino sketch
void setup()
{
   
    pinMode(13,INPUT);
    pinMode(12,INPUT);
    pinMode(14,INPUT);
    pinMode(27,INPUT);
    pinMode(26,INPUT);
    pinMode(25,INPUT);
    pinMode(33,INPUT);
    pinMode(32,INPUT);
    pinMode(35,INPUT);
    pinMode(34,INPUT);
    
  //Serial.begin(115200);
  //Serial.println("ESP32 Device");
  //Serial.println("Initializing...");

  //Initialize the WiFi module
  //Serial.println(" > WiFi");
  hasWifi = false;
  InitWifi();
  
  if (!hasWifi)
  {
    return;
  }
  //Serial.println(" > IoT Hub");
    
  Esp32MQTTClient_Init((const uint8_t*)connectionString);
  Esp32MQTTClient_SetSendConfirmationCallback(SendConfirmationCallback);

  send_interval_ms = millis();
}

void loop()
{
  if (hasWifi)
  {
      
       
    if (messageSending && 
        (int)(millis() - send_interval_ms) >= INTERVAL)
    {
      
      char messagePayload[MESSAGE_MAX_LEN];
      while(digitalRead(35)==0&&digitalRead(34)==0);
       while(digitalRead(35)==1&&digitalRead(34)==0);
       while(digitalRead(35)==0&&digitalRead(34)==1);
       pH = -0.0938 * binary() + 16.4688;
       while(digitalRead(35)==0&&digitalRead(34)==0);
       temp=-0.1313*binary()+61.5760;
       while(digitalRead(35)==1&&digitalRead(34)==0);
       pressure=0.7692*binary()-23.8485;
       //tayang();
      
      //Serial.println("\n ");
      snprintf(messagePayload,MESSAGE_MAX_LEN,messageData, DEVICE_ID, messageCount++, pH,temp, pressure);
      //Serial.println(messagePayload);
      
      EVENT_INSTANCE* message = Esp32MQTTClient_Event_Generate(messagePayload, MESSAGE);
      Esp32MQTTClient_SendEventInstance(message);
      
      send_interval_ms = millis();
    }
  }
  //delay(10000);

}

int binary(){
  int data;
  if(digitalRead(13)==1){
    data=data+1;
  }
  if(digitalRead(12)==1){
    data=data+2;
  }
  if(digitalRead(14)==1){
    data=data+4;
  }
  if(digitalRead(27)==1){
    data=data+8;
  }
  if(digitalRead(26)==1){
    data=data+16;
  }
  if(digitalRead(25)==1){
    data=data+32;
  }
  if(digitalRead(33)==1){
    data=data+64;
  }
  if(digitalRead(32)==1){
    data=data+128;
  }
  return(data);
}

void tayang(){
  Serial.print("pH: ");
  Serial.print(pH);
  Serial.print("  |  Temperature: ");
  Serial.print(temp);
  Serial.print("  |  Pressure: ");
  Serial.println(pressure);
}
