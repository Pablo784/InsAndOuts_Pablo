/*
 PART 3 OF MY FINAL PROJECT. THIS IS WIP1,WIP2,WIP3 ALL IN ONE.
 IN WIP1, I HAD THE PIEZO WITH THE 3 LEDs. 
 IN WIP2, I HAD THE PIEZO,3LEDS,AND INCLUDED THE POTENTIOMETER
 IN WIP3 WHICH IS THIS ONE, IT WILL ALL COME TOGETHER
 
  * I CONSULTED MY PAST CODE, CODE FROM MTEC 1005 (SPRING SEMESTER 2021) REPO ON GITHUB & THIS LINK...
  *-  https://arduinogetstarted.com/tutorials/arduino-potentiometer-triggers-piezo-buzzer
  * & HELP FROM CLASSMATES AND THE PROFESSOR AS MUCH AS POSSIBLE
  * I WILL MOVE JUST A TINY BIT AWAY FROM MY PROPOSAL SO INSTEAD OF HAVING MY OWN CREATED MELODY FOR MY PIEZO I WILL HAVE
  * THE MELODY OF MY PIEZO SEEM LIKE IT HAS GOTTEN STUCK 
  */

// INSTRUCTIONS: TURN THE POT AND SEE THE LEDs LIGHT UP AND THE PIEZO TURN ON
  

// Creates global variables
const int piezo = 8; // piezo pin
const int LED = 13;
const int LED2 = 12;
const int LED3 = 4;
const int sensor = A0;
int reading = 0;
int val = 0;
int value = 0;
int sensorReading; //to track FSR input
int pitch;  // to track pitch

void setup() {
  // initialize serial communications (for debugging only):
  //Serial.begin(9600);
  pinMode(LED,OUTPUT);
  pinMode(LED2,OUTPUT);
  pinMode(LED3,OUTPUT);
  pinMode(piezo,OUTPUT);
  Serial.begin(9600);
}

void loop() {
 // put your main code here, to run repeatedly:
value = analogRead(sensor); // reads sensor pin and assigns to value
sensorReading = analogRead(A0);
delay(10); //debounce delay
// LED wants 0-255, 0-1023  are the values from the sensor

value = value/4; // divinding value by 4 reduces range to max 255
analogWrite(LED, value);
analogWrite(LED2, value);
analogWrite(LED3,value);

 
pitch = map(sensorReading,20,1023,0,50);

tone(piezo, pitch, 10);  // plays pitch
  delay(1);        // delay in between reads for stability
Serial.write(val);
}

 

 
  // FOR FUTURE REFRENCE: THIS IS TO STOP THE PIEZO FROM PLAYING: noTone(piezo);
