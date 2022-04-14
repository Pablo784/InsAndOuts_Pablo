/*
Reads values from serial port, written to the port by Arduino.
 The size of an ellipse changes according to the serial values.
 Must assign the correct port, see instructions below!
 */

/* 
 THIS CODE IS FROM THE PROFFESOR + SOME PAST CODE
 I GOT THE CODE FROM OUR GITHUB CLASS REPO AND MY GITHUB REPO 
 I am using this as a Template but adding my touch to it
*/
import processing.serial.*; //imports Serial library from Processing

Serial myPort; // creates object from Serial class
int val=0; // creates variable for data coming from serial port

float r = 30;
float g = 32;
float b = 50;

float diam; 
float x;
float y;

void setup() {
  size(400, 400);
  /*
   IMPORTANT: We must tell Processing which port to read from.
   Run the sketch and check your console to see the results of printArray(Serial.list());
   and that is how you know the port to use.
   On my Mac, it is port 1 and so I open Serial.list()[1].
   */

  printArray(Serial.list()); // this line prints the port list to the console
  String portName = Serial.list()[7]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);
}

void draw() {
  r = random(255);
  g = random(255);
  b = random(255);
  
  diam = random(30);
  x = random(width);
  y = random(height);
  
  if ( myPort.available() > 0) { // If data is available,
    val = myPort.read(); // read it and store it in val
  }

  //draws an ellipse that grows and shrinks in relation to val
  background(6,116,102);
  fill(255);
  strokeWeight(20);
  fill(r,g,b);
  ellipse (x,y,val,val);
  //println (val); //prints to Processing console
}
