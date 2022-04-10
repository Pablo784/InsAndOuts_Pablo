// DUSTING OFF THE CONCEPT OF PHYSICAL COMPUTING WHICH I HAVEN'T TOUCHED SINCE MTEC 1005 (SPRING SEMESTER 2021)
// AS THE 1st HOMEWORK ASSIGNMENT FOR THE 2nd HALF OF MTEC 2280 (SPRING SEMESTER 2022), WE ARE TRIGGERING 6-8 LEDS WITH A PUSHBUTTON
// IT TOOK ME A WHILE TO GET THE HAND OF MY WIRING BUT AFTER REFRECING SOME VIDEOS THAT I HAVE ON MY PHONE OF MY PAST WORK FROM MTEC 1005 + THE RESOURCES PROVIDED BY THE PROFFESSOR 
// THE ASSIGNMENT WAS EASY TO DO


const int buttonPin = 2;

const int LED = 13;
const int LED2 = 12;

const int LED3 = 11;

const int LED4 = 10;
const int LED5 = 9;

const int LED6 = 8;
const int LED7 = 7;

const int LED8 = 6;

int buttonState = 0;

void setup() {
  // put your setup code here, to run once:

pinMode(LED,OUTPUT);

pinMode(buttonPin,INPUT);

pinMode(LED2, OUTPUT);
pinMode(LED3, OUTPUT);

pinMode(LED4, OUTPUT);
pinMode(LED5, OUTPUT);

pinMode(LED6, OUTPUT);
pinMode(LED7, OUTPUT);

pinMode(LED8, OUTPUT);

}

void loop() {
  // put your main code here, to run repeatedly:
  
// THE PUSHBUTTON
buttonState = digitalRead(buttonPin);
delay(10);

// Conditional Statement
if (buttonState == HIGH) {
  digitalWrite(LED,HIGH); 

// 2nd LED
digitalWrite(LED2, HIGH);
delay(1000);

digitalWrite(LED2,LOW);
delay(1000);

// 3rd LED
digitalWrite(LED3,HIGH);
delay(200);

digitalWrite(LED3,LOW);
delay(200);

// 4th LED
digitalWrite(LED4, HIGH);
delay(100);

digitalWrite(LED4,LOW);
delay(100);

// 5th LED
digitalWrite(LED5,HIGH);
delay(700);

digitalWrite(LED5,LOW);
delay(400);

// 6th LED
digitalWrite(LED6,HIGH);
delay(200);

digitalWrite(LED6,LOW);
delay(200);

// 7th LED
digitalWrite(LED7,HIGH);
delay(300);

digitalWrite(LED7,LOW);
delay(300);

// 8th LED
digitalWrite(LED8, HIGH);
delay(600);

digitalWrite(LED8,LOW);
delay(600);
}
else {
  digitalWrite(LED,LOW);
}

}
