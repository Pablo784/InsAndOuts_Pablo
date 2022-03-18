// This is Assignment 4 for MTEC 2280 (SPRING 2022) (RESUBMITTED...AGAIN)

// Pablo Vasquez : One of my Favorite JDM Cars

// Run the sketch to see a car.. of the future created by Elon Musk

// Also, there is a spinning black circle on the corner of the screen
// and a circle which you can play with r

// I use the code from Week 4 in our class repo on Github 
// & past code to help me out

PImage tesla;

float opacity = 3;
float fade = 1;

float r = 139;
float g = 206;
float b = 96;

float angle = 0.0;
float offset = 60;
float scalar = 2;
float speed = 0.05;



void setup() {
  size(1080,720);
  background(255);
  imageMode(CENTER);
  textAlign(CORNER);
  textSize(40);
  
  
  
  
  tesla = loadImage("tesla.png");
}

void draw() {
  background(r,g,b);
  r = random(50);
  g = random(50);
  b = random(50);
  stroke(255);
  fill(frameCount/5);
  ellipseMode(CENTER);
  
  ellipse(width/4,height/4,mouseX + 20, mouseY + 20);
  


  fill(opacity);
  text("This is a Tesla.", width/8,height/8, - 50); 
  opacity = opacity + fade;
  if (opacity > 255 || opacity < 0) {
    fade = -fade;
  }
  
  fill(255);
  text("An Electric Car!", width/4, height/4, -50);
  
  if (opacity > 255 || opacity < 0) {
    fade = -fade;
  }

image (tesla, width/3, height/2, tesla.width/2, tesla.height/2);
 
println("opacity:" + opacity);
println("fade:" + fade); 

float x = offset + cos(angle) * scalar;
float y = offset + sin(angle) * scalar;
ellipse(x,y,100,100);
angle +=speed;
scalar += speed;

}
