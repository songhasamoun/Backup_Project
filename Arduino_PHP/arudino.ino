#include "USBSerial_main.h"

int incomingByte = 0; int pin = 2;

void setup() {

Serial.begin(9600); //Starts the serial connection

pinMode(2, OUTPUT); //Sets pin 2 to be output

}

void loop() {

if(Serial.available() > 0){

Serial.read(); /Removes the message from the serial cache

digitalWrite(2, true); //Enables the led on pin 2

delay(100); //Waits 100 ms

digitalWrite(2, false); //Disables the led on pin 2

}

}