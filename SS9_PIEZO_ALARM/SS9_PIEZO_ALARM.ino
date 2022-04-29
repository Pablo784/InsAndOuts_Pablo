//////////////////////////////////////////////////////////////////////////////////////////
/*
   Pair with Processing piezo sketch, to control piezo with Processing interface.
   For more info on piezos, see: 
   https://create.arduino.cc/projecthub/SURYATEJA/use-a-buzzer-module-piezo-speaker-using-arduino-uno-89df45
   and
   https://learn.sparkfun.com/tutorials/sik-experiment-guide-for-arduino---v32/experiment-11-using-a-piezo-buzzer
   For tone(): https://www.arduino.cc/reference/en/language/functions/advanced-io/tone/ 
*/
//////////////////////////////////////////////////////////////////////////////////////////

/*
 THIS IS CODE PROVIDED BY THE PROFESSOR
 I WILL ADD MY TOUCH TO IT
 I WANTED TO USED A SERVO MOTOR AT FIRST BUT DECIED TO SIMPLIFY IT TO A PIEZO INSTEAD
 */

 /*
  THIS IS THE FINAL SHORT STUDY
  */

const int LED1 = 12;
const int LED2 = 7;


const int BUZZER = 5; //buzzer to arduino pin 5
int val = 0; //tracks incoming value from Serial port  
int frequency=0; //tracks value to send to piezo



void setup() {
  pinMode(BUZZER, OUTPUT); 
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  Serial.begin (9600); //start serial communication at 9600 baud
}

void loop() {
  if (Serial.available()) { // If data is available to read
    val = Serial.read(); // read it and store it in val
    delay (5);
  }
    frequency = map (val, 2500, 255, 4500, 4500);
    tone (BUZZER, frequency, 300);  // send frequency at 10 millis duration
    delay (10);

    if (BUZZER == HIGH) {
      digitalWrite(LED1,LOW);
    }

     digitalWrite(LED1,HIGH);
     delay(10);
    
    digitalWrite(LED2, HIGH);
    delay(1000);

   
    digitalWrite(LED2, LOW);
    delay(1000);
}   
