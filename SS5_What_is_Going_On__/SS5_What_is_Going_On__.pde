// I used past code and code from the Week 4 repo from our class Github for help
// What is going on by Pablo Vasquez
// Instructions: You might be confused when you run the program because there is a lot going on 
// Run the program and interpret it as best as you can

float r = 2;
float g = 188;
float b  = 99;
float a;

PImage SquidGameGuards;
PImage dice;

float diam;
float x = 100;
float y = 0;

float speed = 0;
float gravity = 0.1;


void setup() {
  size(1080,1080);
  background(r,g,b);
  
  imageMode(CENTER);
  for (int i=20; i<=width; i+=20) {
    SquidGameGuards = loadImage("SquidGameGuards.jpg");
    dice = loadImage("dice.jpg");
    
    }
  }
  
// Made-up Function #1
void drawRect() {
  fill(255);
  rect(500,500,300,300); 
  rectMode(CORNER);
}

  void draw() {
    r = random(233);
    g = random(233);
    b = random(233);
    a = random(233);
    diam = random(233);
    x = random(height);
    y = random(height);
    
    strokeWeight(20);
    fill(r,g,b,a);
    ellipse(x,y,diam,diam);
    background(r,g,b);
    for (int i=4; i<=30; i++) {
      println(i);
    drawRect();
    drawCircle();
    
    fill(0);
    noStroke();
    ellipse(x,y,10,10);
    
    y = y + speed;
    speed = speed + gravity;
    
    if (y > height) {
      speed = speed * -0.95;
      y = height; 
   }
    }
  }


void mousePressed() {
  stroke(4);
  fill(200);
  rect(mouseX, mouseY, 50,50);
}

// Made-Up Function #2
  void drawCircle() {
    fill(255);
    ellipseMode(CORNER);
    circle(300,300,300);
    
    
    for (int i=30; i<=width; i+=40) {
      
      // Squid Game Guards Image 
      image (SquidGameGuards, width/6, height/6, SquidGameGuards.width/4, SquidGameGuards.height/4); 
      
      // Red Dice Image
      image(dice, width/18, height/18, dice.width/6, dice.height/6);
    }
  }
