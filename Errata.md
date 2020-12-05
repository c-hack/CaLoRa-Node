CaLoRa-Node Rev. 1
==================

Revision 1 is fully functional but a few mistakes have made it into the Schematics and the PCB:

* R7 needs to by 10kOhm (the Schematics shows 100k)  - Otherwise the VBatt measurement will not work
* The pads of the DS1337 (U3) are too wide for the package. This is OK for handsoldering but will probably not work for reflow soldering
* The silkscreen for the four JST connectors (J9..12) is turned by 180 degree. The picture shows them mounted in the right direction
 ![Alt-Text](board1.jpg)
* The connector for the UART-to-USB converter was meant to be compatible to the popular module by AZDelivery. Unfortunately we connected RX with RX and TX with TX. They should be crossed. So please solder a cable where RX conncts to TX and TX to RX. We will fix that with a future rev of the PCB.
 

