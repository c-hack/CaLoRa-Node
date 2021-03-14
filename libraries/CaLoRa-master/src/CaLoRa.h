/* Arduino CaLoRa - Ralf Stoffels
 * 
 * This library is a wrapper of the LMIC library for the HopeRF RFM95W LoRa-Module
 * it makes it easier usable and similar to the MKR1300 library but not compatible
 * 
 */

#include <lmic.h>
#include <hal/hal.h>
#include <SPI.h>
#include <Wire.h>
#include <DS1337.h>

#ifndef CaLoRa_h
#define CaLoRa_h


class CaLoRa
{
  public:
    CaLoRa();
    void begin();  // initializes and starts the node
    void joinABP(u4_t devAddr, u1_t nwkSKey[16], u1_t appSKey[16]);  // Join the network with the ABP method
    int  getVBatt(); 
    void sendData(uint8_t data[]);
    int  pollReceivedData(uint8_t &receiveData);
    void gotoSleep(int hours, int minutes);

  private:
    
};

#endif
