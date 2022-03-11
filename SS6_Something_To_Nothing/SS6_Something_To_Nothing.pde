// This is Assignment 6 
// I used past code and code from Week 6 to help me out
// Run the program to see something then nothing...well not nothing nothing just some text

int[] numbers = {90,150,30};
int d = numbers[0]; 

float opacity = 3;
float fade = 1;


int actualTime = 1;
int timer1 = 3000;
int timer2 = 1000;

int x = 0;
int speed = 1;

int ellipseX = 0;

float r;
float g;
float b;
float a;

float diam;
float y;

void setup() {
  size(1100,700);
  textAlign(CORNER);
  textSize(50);
  fill(255);
  background(255);
  
}

void draw() {
  fill(0);
  text("Hello!!!!", width/10, height/10, -50);
  fill(255);
  ellipse(ellipseX,height/3,120,150);
  ellipseX+=30;
  fill(255);
  strokeWeight(4);
  

  actualTime = millis();
  
  if (actualTime > timer1) {
    background(13,98,165); // blue background
    fill(255);
    text("There's nothing here.", width/10, height/10, -40);
    fill(255);
    text("Goodbye!", width/10, height/4, -40);
   
  println("timer 1 begin");
    
  } else if (actualTime > timer2) {
    background(0); // black background
    println("timer 2 begin");
    
  drawEllipse();
  
  drawRect();
  
  r = random(254);
  g = random(254);
  b = random(254);
  a = random(254);
  diam = random(254);
  y = random(254);
  
  stroke(5);
  fill(255);
  ellipse(800,y,diam,diam); 
 
  fill(opacity);
  text("You see this ->", width/9, height/10, -40);
  opacity = opacity + fade;
  if (opacity > 250 || opacity < 0) {
    fade = -fade;
  }
  }
  }
// User Defined Function #1
void drawEllipse() {
  fill(0);
  ellipseMode(CENTER);
  ellipse(210,300,210,400);
  
}

// User-Defined Function #2
void drawRect() {
  fill(255);
  rectMode(CORNER);
  rect(440,400,440,800); 
}
