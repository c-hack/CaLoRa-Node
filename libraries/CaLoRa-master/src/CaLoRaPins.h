/****************************************************
 * Pin Configuration for CaLoRa-Node
 ****************************************************/

//======= dummy but required by LMIC =======
void os_getArtEui (u1_t* buf) { }
void os_getDevEui (u1_t* buf) { }
void os_getDevKey (u1_t* buf) { }
void onEvent (ev_t ev) { }


// Pin mapping for CaLoRa-Node(TM)
const lmic_pinmap lmic_pins = {
      .nss = 10,
      .rxtx = LMIC_UNUSED_PIN,
      .rst = 9,
      .dio = {2, 6, 7},
};
