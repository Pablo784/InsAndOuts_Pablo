// DEMO FOR SENDING SERIAL DATA FROM ARDUINO TO PROCESSING
//READS ANALOG SENSOR AND WRITES VALUE TO SERIAL PORT 

/* 
 THIS CODE IS FROM OUR CLASS GITHUB REPO BY THE PROFFESSOR WHICH I USED AS A TEMPLATE PLUS
 I ADDED MY PERSONAL TOUCH TO IT
*/
const int LED = 11;
const int potPin = A0; //sensor hooked up to analog pin A0

int val = 0;

int reading = 0;

void setup() {
 // pinMode (potPin, INPUT);
  pinMode(LED,OUTPUT);
  Serial.begin(9600); // Start serial communication at 9600 baud
}

void loop() {
reading = analogRead(potPin);
analogWrite(LED,reading/4);

/*
 digitalWrite(LED,HIGH);
 delay(300);
 */
    
  val = analogRead(potPin); //read sensor and assign to variable called val
  val = val / 4; //divide val by 4 or remap values to get byte-sized 0-255
  delay(100); // Wait 100 milliseconds


  /////////Uncomment Serial.print() OR Serial.write() and not both!//////////////
  
  //Serial. println(val); //to send human-readable data to Arduino monitor
  Serial.write(val);  //to send binary data to Processing
}
