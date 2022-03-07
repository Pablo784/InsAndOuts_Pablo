// This is Assignment for Week 3 (Resubmitted...Again) 

// Hover with your cursor to have a bunch of circles appear and the hover again to 
// make them disappear but be careful because more circles will come your way

// I used past code and the processing website to help me flex out my idea 

float r = 29; 
float g = 32;
float b = 90;

float diam;
float x; 
float y; 



void setup() {
  size(600,600);
  background(r,g,b);
}

void draw() {
 r = random(255);
 g = random(255);
 b = random(255);
 
 diam = random(30);
 x = random(width);
 y = random(height);
 
 strokeWeight(300);
 fill(r,g,b);
 ellipse(x,y,diam,diam);

  
  
  noStroke();
  fill(0);
  if (mouseX < 100 && mouseY < 100) {
    fill(255);
    circle(200,130,200);
  } else if (mouseX > 200 && mouseY < 300) {
    fill(255);
    square(300,300,300);
  } else if (mouseX > 400 && mouseY > 500) {
    ellipse(122,201,234,50);
  for (int i=4; i<=20; i++) {
    println(i);
  }
  
  for (int i=30; i<=width; i+=30) {
    rect(i,2,2,height);
  }
  
  }
}
