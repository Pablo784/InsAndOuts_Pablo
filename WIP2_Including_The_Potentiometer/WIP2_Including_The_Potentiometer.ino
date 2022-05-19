/*
 PART 2 OF MY FINAL PROJECT I WILL BUILD OFF WIP1 
 IN WIP1, I HAD THE PIEZO WITH THE 3 LEDs SO THIS TIME I WILL HAVE THE POTENTIOMETER ACT LIKE A ON/OFF SWITCH
 TURN ON AND OFF MY PIEZO AND LEDS
 
  * I CONSULTED MY PAST CODE FROM MTEC 1005 (SPRING SEMESTER 2021)
  * & ALSO THE CODE FROM OUR CLASS GITHUB REPO + HELP FROM CLASSMATES AND THE PROFESSOR AS MUCH AS POSSIBLE
  */

const int piezo = 8;
const int potPin = A0; // creates a fixed variable called a sensor and assigned
int reading = 0;
int pitch;
int val = 0;
int frequency = 1;
const int LED =  13; // creates a fixed variable called LED and assigns value
const int LED2 =  12;
const int LED3 = 4;
int value = 0;

void setup() {
  // put your setup code here, to run once:
Serial.begin(9600); 
pinMode(LED,OUTPUT);
pinMode(LED2,OUTPUT);
pinMode(LED3,OUTPUT);
pinMode(potPin,INPUT);

}

void loop() {
  value = analogRead(potPin);
  delay(10);
  
  analogWrite(LED,reading/4);
  analogWrite(LED2,reading/4);
  analogWrite(LED3,reading/4);
  

pitch = map(piezo, 20, 1020, 300, 50);

if (potPin == HIGH) {
digitalWrite(LED, HIGH);
delay(100);

digitalWrite(LED2, LOW);
delay(100);

digitalWrite(LED3, HIGH);
  delay(200);
  
digitalWrite(LED, LOW);
  delay(200);

digitalWrite(LED2, HIGH);
  delay(300);

digitalWrite(LED3, LOW);
  delay(300);

tone(piezo, 1100, 200);
delay(400);

digitalWrite(LED, HIGH);
delay(200);

tone(piezo, 1050,1200);
delay(600);

digitalWrite(LED2, LOW);
delay(200);

digitalWrite(LED3, HIGH);
delay(200);

digitalWrite(LED, LOW);
delay(200);

tone(piezo,1050, 1300);
delay(3000);

digitalWrite(LED2, HIGH);
delay(200);

tone(piezo, 1250, 1000);
delay(900);

digitalWrite(LED3, LOW);
delay(200);

tone(piezo, 1050, 1100);
delay(1000);


} else {
digitalWrite(LED, HIGH);
delay(30);

tone(piezo, 1200, 1000);
delay(2000);

digitalWrite(LED2, HIGH);
delay(300);


tone(piezo, 1100, 1100);
delay(6000);

digitalWrite(LED3, LOW);
delay(400);

tone(piezo, 1100, 2000);
delay(50);

digitalWrite(LED3, HIGH);
delay(300);

tone(piezo, 1500,1300);
delay(70);

digitalWrite(LED2, LOW);
delay(400);

tone(piezo, 1300, 1400);
delay(300);

digitalWrite(LED3, LOW);
delay(500);

tone(piezo, 1100, 1200);
delay(90);


digitalWrite(LED, LOW);
delay(600);

Serial.write(val);
}

}



  // FOR FUTURE REFRENCE: THIS IS TO STOP THE PIEZO FROM PLAYING: noTone(piezo);
