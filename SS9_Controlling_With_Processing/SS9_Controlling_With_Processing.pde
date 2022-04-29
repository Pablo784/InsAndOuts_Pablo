///////////////////////////////////////////////////////
/*
DEMO: SENDING DATA FROM PROCESSING TO ARDUINO
 Pair with Arduino demo sketch to control Piezo.
 
 Piezo frequency corresponds with mouseX position.
 Press mouse to send data over serial.
 
 Note: Be sure to specify correct port number below!
 */
///////////////////////////////////////////////////////

/*
This is code provided by the professor 
I will add my touch to it
I wanted to use a Servo Motor at first but decided to simplify it to a Piezo instead
*/

/*
THIS IS THE FINAL SHORT STUDY
*/


int val=0; //to send over Serial

import processing.serial.*;  //import Serial library

Serial myPort;  // create object from Serial class


void setup() {
  size(500, 500); 
  textSize (44);
  textAlign (CENTER, CENTER);

  //set up Serial communication
  printArray(Serial.list()); // prints port list to the console
  String portName = Serial.list()[7]; //change to match your port
  myPort = new Serial(this, portName, 9600); //initialize Serial communication at 9600 baud
}

void draw() {
  background (mouseX/4,206);
  fill (mouseY+100, 10, mouseX);
  stroke(66);
  text ("SOUND THE ALARM!!!", width/2, height/2);

  if (mousePressed) {
    //mouse location controls communication to Serial 
    val= int (map (mouseX, 0, width, 0, 255)); //remaps mouseY to 0-255  
    myPort.write(val); //write to Serial
    println(val);  //print to console

    //NOTE: SENDING VALUES 0-255 as Arduino receives byte-sized data over port
  }
}
