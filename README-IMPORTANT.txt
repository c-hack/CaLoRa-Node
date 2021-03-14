IMPORTANT: Arduino Version
==========================

The lmic library can only be compiled with Arduino versions earlier than 1.8.10

If you want to use 1.8.10 or higher you have to change the compiler options.
To do this you have to create the file platform.local.txt in the directory <arduino_install_dir>/hardware/arduino/avr/

Content of platform.local.txt:
compiler.c.flags=-c -g -O2 {compiler.warning_flags} -std=gnu11 -ffunction-sections -fdata-sections -MMD -flto -fno-fat-lto-objects

More background on that issue:
https://github.com/matthijskooijman/arduino-lmic/issues/243

-----------------------------------------------------------------------------------------------------------------------------

Die lmic Library wird nur von Arduino Versionen vor 1.8.10 übersetzt.

Will man das auch mit 1.8.10 und neuer tun, dann muss man Compileroptionen ändern.
Dazu die Datei platform.local.txt in das Verzeichnis <arduino_install_dir>/hardware/arduino/avr/ kopieren

Inhalt der Datei:
compiler.c.flags=-c -g -O2 {compiler.warning_flags} -std=gnu11 -ffunction-sections -fdata-sections -MMD -flto -fno-fat-lto-objects

Mehr Informationen zu diesem Problem:
https://github.com/matthijskooijman/arduino-lmic/issues/243

