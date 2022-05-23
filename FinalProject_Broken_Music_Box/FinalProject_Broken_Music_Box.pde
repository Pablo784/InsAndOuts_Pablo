
/*
 PART 3 OF MY FINAL PROJECT. THIS IS WIP1,WIP2,WIP3 ALL IN ONE.
 IN WIP1, I HAD THE PIEZO WITH THE 3 LEDs. 
 IN WIP2, I HAD THE PIEZO,3LEDS,AND INCLUDED THE POTENTIOMETER
 IN WIP3 WHICH IS THIS ONE, IT WILL ALL COME TOGETHER
 
  * I CONSULTED MY PAST CODE, CODE FROM MTEC 1005 (SPRING SEMESTER 2021) REPO ON GITHUB & THIS LINK...
  *-  https://arduinogetstarted.com/tutorials/arduino-potentiometer-triggers-piezo-buzzer
  * & HELP FROM CLASSMATES AND THE PROFESSOR AS MUCH AS POSSIBLE
  * I WILL MOVE JUST A TINY BIT AWAY FROM MY PROPOSAL SO INSTEAD OF HAVING MY OWN CREATED MELODY FOR MY PIEZO I WILL HAVE
  * THE MELODY OF MY PIEZO SEEM LIKE IT HAS GOTTEN STUCK 
  */
  
  // INSTRUCTIONS: TURN THE POT AND SEE THE LEDs LIGHT UP AND THE PIEZO TURN ON. PRESS ANY KEY ON YOUR KEYBOARD TO SEE THE VARIOUS IMAGES POP UP ON YOUR SCREEN IN DIFFERNET POSITIONS
  
   
import processing.serial.*;  //import Serial library
PImage[] random_pics = new PImage[5];
PImage i0,i1,i2,i3,i4,i5;
PFont font1;

Serial myPort;  // create object from Serial class
int val=0; //to send over Serial

void setup() {
  size(1080, 500); 
  textSize(29);
  textAlign (BOTTOM,CENTER);
  font1 = loadFont("STIXGeneral-Bold-48.vlw");
  

  
  i0 = loadImage("apple.jpg");
  i1 = loadImage("sun.jpg");
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
{
} 
void draw() {
  background(mouseX,mouseY,mouseX/2);
  fill(mouseY+100,0,mouseX);
  fill(0);
  textFont(font1,29);
  text ("LOOK AT THE DIFFERENT IMAGES!!", width/2, height/2);
{

if (keyPressed) {
    //mouse location controls communication to Serial 
    val= int (map (mouseX, 0, width, 0, 255)); //remaps mouseY to 0-255  
    myPort.write(val); //write to Serial
    println(val);  //print to console
 }
 }
}

void keyPressed() {
  for (int b=4; b<10; b++) {
  image(random_pics[int(random(random_pics.length))],random(width),random(height));
  }
}
