import de.looksgood.ani.*;
import de.looksgood.ani.easing.*;
// THE ANIMATION LIBRARY; FIRST TIME USING THIS 

/*
I USED CODE FROM MY OWN REPO AS A STARTING POINT 
I WILL HAVE IMAGES APPEAR ONE AFTER THE OTHER
IN OTHER WORDS, I WILL TURN THE POT AND THE MELODY WILL START TO PLAY AND A IMAGE WILL APPEAR AND SO ON
*/

/* THIS YOUTUBE VIDEO HELPED ME FOR THE IMAGES ARRAY 
- https://www.youtube.com/watch?v=xlLShhnzA14
THE REASON BEING IS BECAUSE I TRIED TO USE THE CODE FROM ONE OF THE EBOOK EXERCISES BUT IT WASN'T WORKING
*/

import processing.serial.*;  //import Serial library

PImage[] random_pics = new PImage[5]; 
PImage i0,i1,i2,i3,i4,i5;

Serial myPort;  // create object from Serial class
int val=0; //to send over Serial

void setup() {
  size(1080, 500); 
  textSize(29);
  textAlign (BOTTOM, CENTER);
  
  i0 = loadImage("nuclear.jpg");
  i1 = loadImage("stock.jpg");
  i2 = loadImage("quarter.jpg");
  i3 = loadImage("cat.jpg");
  i4 = loadImage("space.jpg");
  
  random_pics[0] = i0;
  random_pics[1] = i1;
  random_pics[2] = i2;
  random_pics[3] = i3;
  random_pics[4] = i4;
  
  //set up Serial communication
  printArray(Serial.list()); // prints port list to the console
  String portName = Serial.list()[3]; //change to match your port
  myPort = new Serial(this, portName, 9600); //initialize Serial communication at 9600 baud
}

void draw() {
  background(mouseX,mouseY,mouseX/2);
  fill(mouseY+100,0,mouseX);
  fill(0);
  text ("LOOK AT THE DIFFERENT IMAGES!!", width/2, height/2);
{
  
 if (mousePressed) {
    //mouse location controls communication to Serial 
    val= int (map (mouseX, 0, width, 0, 255)); //remaps mouseY to 0-255  
    myPort.write(val); //write to Serial
    println(val);  //print to console
 }
 }
}

void mousePressed() {
  for (int b=4; b<10; b++) {
  image(random_pics[int(random(random_pics.length))],random(width),random(height));
  }
}
