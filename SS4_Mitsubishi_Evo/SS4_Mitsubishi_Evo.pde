// This is Assignment 4 for MTEC 2280 (SPRING 2022) (RESUBMITTED)

// Pablo Vasquez : One of my Favorite JDM Cars

// Do you like JDM cars or cars in general? Run the sketch and find out for yourself

// I use the code from Week 4 in our class repo on Github 
// & past code to help me out

PImage evo;

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
  
  
  
  
  evo = loadImage("evo.png");
}

void draw() {
  
  
  background(r,g,b);
  r = random(50);
  g = random(50);
  b = random(50);



  fill(opacity);
  text("This is a Mitsubishi Evo.", width/8,height/8, - 50); 
  opacity = opacity + fade;
  if (opacity > 255 || opacity < 0) {
    fade = -fade;
  }
  
  fill(237,255,0);
  text("A JDM Car!", width/4, height/4, -50);
  
  if (opacity > 255 || opacity < 0) {
    fade = -fade;
  }

image (evo, width/3, height/2, evo.width/2, evo.height/2);
 
println("opacity:" + opacity);
println("fade:" + fade); 

float x = offset + cos(angle) * scalar;
float y = offset + sin(angle) * scalar;
ellipse(x,y,100,100);
angle +=speed;
scalar += speed;

}
