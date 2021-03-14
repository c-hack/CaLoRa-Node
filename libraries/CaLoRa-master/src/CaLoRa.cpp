/* CaLoRa.cpp - Ralf Stoffels 2021
 * 
 *
 */

#include <CaLoRa.h>
#include "Arduino.h"

CaLoRa::CaLoRa() {    // Constructor
}

//================= initializes and starts the node ============
void CaLoRa::begin() {
    // LMIC init
    os_init();
    // Reset the MAC state. Session and pending data transfers will be discarded.
    LMIC_reset();
}    
    

void CaLoRa::joinABP(u4_t devAddr, u1_t nwkSKey[16], u1_t appSKey[16]) {  // Join the network with the ABP method
    LMIC_setSession (0x1, devAddr, nwkSKey, appSKey);

    LMIC_setupChannel(0, 868100000, DR_RANGE_MAP(DR_SF12, DR_SF7),  BAND_CENTI);      // g-band
    LMIC_setupChannel(1, 868300000, DR_RANGE_MAP(DR_SF12, DR_SF7B), BAND_CENTI);      // g-band
    LMIC_setupChannel(2, 868500000, DR_RANGE_MAP(DR_SF12, DR_SF7),  BAND_CENTI);      // g-band
    LMIC_setupChannel(3, 867100000, DR_RANGE_MAP(DR_SF12, DR_SF7),  BAND_CENTI);      // g-band
    LMIC_setupChannel(4, 867300000, DR_RANGE_MAP(DR_SF12, DR_SF7),  BAND_CENTI);      // g-band
    LMIC_setupChannel(5, 867500000, DR_RANGE_MAP(DR_SF12, DR_SF7),  BAND_CENTI);      // g-band
    LMIC_setupChannel(6, 867700000, DR_RANGE_MAP(DR_SF12, DR_SF7),  BAND_CENTI);      // g-band
    LMIC_setupChannel(7, 867900000, DR_RANGE_MAP(DR_SF12, DR_SF7),  BAND_CENTI);      // g-band
    LMIC_setupChannel(8, 868800000, DR_RANGE_MAP(DR_FSK,  DR_FSK),  BAND_MILLI);      // g2-band
   
    // Let LMIC compensate for +/- 1% clock error
    LMIC_setClockError(MAX_CLOCK_ERROR * 1 / 100);

    // Disable link check validation
    LMIC_setLinkCheckMode(0);

    // TTN uses SF9 for its RX2 window.
    LMIC.dn2Dr = DR_SF9;

    // Set data rate and transmit power for uplink (note: txpow seems to be ignored by the library)
    LMIC_setDrTxpow(DR_SF7,14);
}

//========== Sends the Battery Voltage as one byte: Example decimal 31 (0x1F) means 3.1V  
int CaLoRa::getVBatt() {
    const int pinVoltage = A7;
    float R;
    int a;
    
    analogReference(INTERNAL);
    delay(10);
    a = analogRead(pinVoltage);
    R =(float) a;
    return (int) R/1024.0 / 0.0909 * 1.1 * 10;    // 100kOhm/10kOhm Spannungsteiler 1.1V Reference
}
    
void CaLoRa::sendData(uint8_t data[]) { 
     // Prepare upstream data transmission at the next possible time.
     LMIC_setTxData2(1, data, sizeof(data), 0);
}
 
//Returns the numer of bytes received; The receive data array contains the data  
int CaLoRa::pollReceivedData(uint8_t &receiveData) {
    receiveData = LMIC.frame;
    return LMIC.dataLen;
}

// Sets the CaLoRa-Node to sleep via RTC. The Power gets disconnected by a HW Switch P-MOS Transistor at alarm output of DS1337
void CaLoRa::gotoSleep(int hours, int minutes){
     DS1337 rtc;
     Date d;
  
     rtc.init();
     rtc.setTime(12,0);
     rtc.setAlarmMode(DS1337_ALARM_ON_SECOND_MINUTE_HOUR);
     rtc.setAlarm(12+hours, minutes, 0);

     d= rtc.getDate();
     //  Serial.println("Time and Date ="+d.getTimeString());

     d = rtc.getAlarm();
     //  Serial.println("Alarm ="+d.getTimeString());

  
     rtc.enableAlarm();
     rtc.clearAlarm();
}
