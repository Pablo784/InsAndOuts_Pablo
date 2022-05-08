/*
 FOR THIS FINAL I AM GOING TO BUILD IT IN PARTS
 IN OTHER WORDS, I AM GOING TO FOCUS ON DIFFERENT PART OF MY FINAL 
 FOR THIS PART, I AM GOING TO FOCUS ON THE MELODY OF MY MUSIC BOX WHICH WHEN LISTENED YOU WILL IMAGINE AN EVIL CLOWN 
 PLUS THE LEDS TO FOLLOW ALONG TO THE BEAT
 
This is code provided by the professor 
I will add my touch to it
 */

int val=0; //to send over Serial

import processing.serial.*;  //import Serial library

Serial myPort;  // create object from Serial class


void setup() {
  size(500, 500); 
  textSize (44);
  textAlign (BOTTOM, CENTER);

  //set up Serial communication
  printArray(Serial.list()); // prints port list to the console
  String portName = Serial.list()[3]; //change to match your port
  myPort = new Serial(this, portName, 9600); //initialize Serial communication at 9600 baud
}

void draw() {
  background (mouseX/4,206);
  fill(206);
  text ("BOOOOO!!", width/2, height/2);

  if (mousePressed) {
    //mouse location controls communication to Serial 
    val= int (map (mouseX, 0, width, 0, 255)); //remaps mouseY to 0-255  
    myPort.write(val); //write to Serial
    println(val);  //print to console

    //NOTE: SENDING VALUES 0-255 as Arduino receives byte-sized data over port
  }
}
