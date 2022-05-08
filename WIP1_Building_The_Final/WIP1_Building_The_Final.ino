/*
 FOR THIS FINAL I AM GOING TO BUILD IT IN PARTS
 IN OTHER WORDS, I AM GOING TO FOCUS ON DIFFERENT PART OF MY FINAL 
 FOR THIS PART, I AM GOING TO FOCUS ON THE MELODY OF MY MUSIC BOX WHICH WHEN LISTENED YOU WILL IMAGINE AN EVIL CLOWN 
 PLUS THE LEDS TO FOLLOW ALONG TO THE BEAT

I USED PAST CODE FOR HELP & THIS SITE FOR HELP: https://www.deanzatech.com/arduino-buzzer.html

 
 */

const int piezo = 8;

const int LED = 13;

const int LED2 = 12;

const int LED3 = 4;

const int BUZZER = 3;

int frequency=1;

int sensorReading; 
int pitch;

 void setup() {
  pinMode(LED,OUTPUT);
  pinMode(LED2,OUTPUT);
  pinMode(LED3,OUTPUT);
 }

void loop() {
  sensorReading = analogRead(piezo);
  delay(10);

  pitch = map(100,200,300,300,400); 
  tone (BUZZER, frequency, 300);

  
  int frequency=0;
  
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

digitalWrite(LED, HIGH);
delay(30);


tone(piezo, 1200, 1000);
delay(2000);

digitalWrite(LED, HIGH);
delay(300);


tone(piezo, 1100, 1100);
delay(6000);

digitalWrite(LED2, LOW);
delay(400);


tone(piezo, 1100, 2000);
delay(50);

digitalWrite(LED3, HIGH);
delay(300);


tone(piezo, 1500,1300);
delay(70);

digitalWrite(LED, LOW);
delay(400);

tone(piezo, 1300, 1400);
delay(300);

digitalWrite(LED2, LOW);
delay(500);

tone(piezo, 1100, 1200);
delay(90);

digitalWrite(LED3, LOW);
delay(600);

}
