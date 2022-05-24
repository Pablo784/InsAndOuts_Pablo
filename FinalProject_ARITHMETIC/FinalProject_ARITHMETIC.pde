
/*
BEFORE REVISING MY FINAL PROJECT
 PART 3 OF MY FINAL PROJECT. THIS IS WIP1,WIP2,WIP3 ALL IN ONE.
 IN WIP1, I HAD THE PIEZO WITH THE 3 LEDs. 
 IN WIP2, I HAD THE PIEZO,3LEDS,AND INCLUDED THE POTENTIOMETER
 IN WIP3 WHICH IS THIS ONE, IT WILL ALL COME TOGETHER
 */
 
// I WILL BUILD OFF SS8
 
  /* I CONSULTED MY PAST CODE, CODE FROM MTEC 1005 (SPRING SEMESTER 2021) REPO ON GITHUB & THESE LINKS...
     // https://processing.org/
  * - https://arduinogetstarted.com/tutorials/arduino-potentiometer-triggers-piezo-buzzer
  * & HELP FROM CLASSMATES AND THE PROFESSOR AS MUCH AS POSSIBLE
  * I HAVE DECIDED TO SCALE BACK AND STEER FROM MY PROPOSAL A BIT. I WILL TURN THE POT AND HAVE MY PIEZO AND LED LIGHT UP AND YOU WILL SEE DIFFERENT SHAPES & NUMBERS
  */
  
  // INSTRUCTIONS: TURN THE POT AND SEE THE LED LIGHT UP, THE PIEZO TURN ON AND SEE THE SHAPES & NUMBERS ON YOUR SCREEN
    
import processing.serial.*; //imports Serial library from Processing
PFont font1;
Serial myPort; // creates object from Serial class
int val=0; // creates variable for data coming from serial port

float r = 30;
float g = 32;
float b = 50;

float diam; 
float x;
float y;

void setup() {
  textSize(44);
  size(1080, 400);
  font1 = loadFont("CorsivaHebrew-Bold-48.vlw");
  textAlign(BOTTOM,LEFT);
  
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
  background(255);
  strokeWeight(20);
  fill(255,230,r);
  background(80,39,val,val);
  ellipse(x,y,val,val);
  square(100,100,100);
  triangle(120,332,332,80,344,300);
  text(x,y,val,val);
  textFont(font1,26);
  text("NUMBERS AND SHAPES",width/5,height/5);
  //println (val); //prints to Processing console
}
