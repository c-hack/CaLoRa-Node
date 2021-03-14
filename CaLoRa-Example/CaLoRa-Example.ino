/*******************************************************************************
 * 
 * This is the test code for the CaLoRa-Wrapper of the LMIC Library
 *
 *******************************************************************************/

#include <CaLoRa.h>
#include <CaLoRaPins.h>

CaLoRa node;

static const u1_t NWKSKEY[16] = { 0xE0, 0x54, 0x46, 0xFC, 0x09, 0x8C, 0x4A, 0x2C, 0xF7, 0x8D, 0x83, 0x1E, 0x8C, 0xA4, 0xE0, 0xF3 };
static const u1_t APPSKEY[16] = { 0x40, 0x9B, 0xD7, 0xAD, 0xE3, 0x4A, 0x24, 0x8D, 0xD5, 0x96, 0x75, 0x52, 0xC9, 0xBE, 0xE4, 0xDD };

// LoRaWAN end-device address (DevAddr)
static const u4_t DEVADDR = 0x26011AFF ; // <-- Change this address for every node!

static uint8_t myData[] = "ABC";


//================ Temperaturmessung und Berechnung ==================================

int getGroveTemperature() {
  const int B=4275;                 // B value of the thermistor
  const int R0 = 100000;            // R0 = 100k
  const int pinTempSensor = A0;     // Grove - Temperature Sensor connect to A0
  
  analogReference(DEFAULT);
  delay(10);
  int a = analogRead(pinTempSensor );
  float R = 1023.0/((float)a)-1.0;
  R = 100000.0*R;
 
  return (int) 1.0/(log(R/100000.0)/B+1/298.15)-273.15;  //convert to temperature via datasheet ;
}

void setup() {

    node.begin();
    node.joinABP(DEVADDR, NWKSKEY, APPSKEY);
    
    myData[0] = getGroveTemperature();
    myData[1] = node.getVBatt();
    myData[2] = 0;

    // Send data
    node.sendData(myData);

    delay(1000);

    node.gotoSleep(0,1);   // 0 Houres, 30 Minuten Sleep time
}


// ======= Dieser Code wird nur im Debug-Mode erreicht, wenn die Schaltung am USB-Port betrieben wird ====================
void loop() {
/*  DS1337 rtc;
  Date d;

  String status;

  d= rtc.getDate();
  Serial.print("Time and Date = "+d.getTimeString());
  if (rtc.isAlarmEnabled()) status = "Ja"; else status = "Nein";
  Serial.print(" Alarm Enabled = "+status);
  if (rtc.isAlarmActive()) status = "Ja"; else status = "Nein";
  Serial.println(" Alarm on = "+ status);

  os_runloop_once();  */
  
  delay(5000);
    
}
