#include <CapacitiveSensor.h>
CapacitiveSensor capSensor = CapacitiveSensor(3, 2);
CapacitiveSensor capSensor2 = CapacitiveSensor(5, 4);
CapacitiveSensor capSensor3 = CapacitiveSensor(7, 6);
CapacitiveSensor capSensor4 = CapacitiveSensor(9, 8);

int threshold = 50;
const int ledPin = 12;
const int ledPin2 = 13;
const int ledPin3 = 11;
const int ledPin4 = 10;

void setup () {
  Serial.begin(9600);
  pinMode(ledPin, OUTPUT);
  pinMode(ledPin2, OUTPUT);
  pinMode(ledPin3, OUTPUT);
  pinMode(ledPin4, OUTPUT);
}

void loop() {

  //sensor1
  long sensorValue = capSensor.capacitiveSensor(30);
//  Serial.println(sensorValue);
  if (sensorValue > threshold) {
    digitalWrite(ledPin, HIGH);
  }
  else {
    digitalWrite(ledPin, LOW);
  }
  delay(10);

  //sensor 2
  long sensorValue2 = capSensor2.capacitiveSensor(30);
//  Serial.println(sensorValue2);
  if (sensorValue2 > threshold) {
    digitalWrite(ledPin2, HIGH);
  }
  else {
    digitalWrite(ledPin2, LOW);
  }
  delay(10);

  //sensor 3
  long sensorValue3 = capSensor3.capacitiveSensor(30);
 // Serial.println(sensorValue3);
  if (sensorValue3 > threshold) {
    digitalWrite(ledPin3, HIGH);
  }
  else {
    digitalWrite(ledPin3, LOW);
  }
  delay(10);

  //sensor 4
  long sensorValue4 = capSensor4.capacitiveSensor(30);
//  Serial.println(sensorValue4);
  if (sensorValue4 > threshold) {
    digitalWrite(ledPin4, HIGH);
  }
  else {
    digitalWrite(ledPin4, LOW);
  }
  delay(10);


  Serial.print("S1:");
  Serial.print(sensorValue);
  Serial.print(",");

  Serial.print("S2:");
  Serial.print(sensorValue2);
  Serial.print(",");

  Serial.print("S3:");
  Serial.print(sensorValue3);
  Serial.print(",");

  Serial.print("S4:");
  Serial.print(sensorValue4);
  Serial.print(",");

  

}


