/*
 * BEFORE REVISING MY FINAL PROJECT
 PART 3 OF MY FINAL PROJECT. THIS IS WIP1,WIP2,WIP3 ALL IN ONE.
 IN WIP1, I HAD THE PIEZO WITH THE 3 LEDs. 
 IN WIP2, I HAD THE PIEZO,3LEDS,AND INCLUDED THE POTENTIOMETER
 IN WIP3 WHICH IS THIS ONE, IT WILL ALL COME TOGETHER
 
  * I CONSULTED MY PAST CODE, CODE FROM MTEC 1005 (SPRING SEMESTER 2021) REPO ON GITHUB & THIS LINK...
  *-  https://arduinogetstarted.com/tutorials/arduino-potentiometer-triggers-piezo-buzzer
  * & HELP FROM CLASSMATES AND THE PROFESSOR AS MUCH AS POSSIBLE
  * I WILL MOVE JUST A TINY BIT AWAY FROM MY PROPOSAL.. I WILL USE SS8 AS A STARTING POINT AND HAVE DIFFERENT SHAPES & NUMBERS APPEAR TO THE TURN OF THE POT
  */

// INSTRUCTIONS: TURN THE POT AND SEE THE LEDs LIGHT UP AND THE PIEZO TURN ON
  
const int LED = 13;
const int sensor = A0;
const int piezo = 8;
int val = 0;
int reading = 0;
int sensorReading;
int pitch;
int value = 0;

void setup() {
  pinMode(LED,OUTPUT);
  Serial.begin(9600);
}

void loop() {
 reading = analogRead(sensor);
  analogWrite(LED,reading/4);
  val = analogRead(sensor);
  val = val/4;
  pitch = map(sensorReading,200,400,0,500);
  tone(piezo,pitch,10);
  delay(1);
  Serial.write(val);
}
