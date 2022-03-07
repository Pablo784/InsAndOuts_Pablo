// There's A Beauty In Random-Ness by Pablo Vasquez
// This is Assigment 2 
// Instructions: Run the Program and you'll think you just see a normal circle but...

int ellipseA;
int ellipseB;
float rectP;
float rectO;
float a = 1;

float r;
float g;
float b;
float c;

float diam;
float x;
float y;

  void setup() {
  size(400,400);
  background(200,200,30);
}

void mousePressed() {
  background(200,100,10);
}

void draw() { 
  {
  if(mouseX > width/4) {
    fill(0,90,162);
    ellipse(width/4,height/4,100,100);
}
    else if(mouseY > height/4) {
      fill(0);
      rect(width/4,height/4,300,300);
      
    } else {
      fill(200);
      rectMode(CENTER);
      strokeWeight(55);
      rect(width/4, height/4,400,400);
      
      
      r = random(255);
      g = random(255);
      b = random(255);
      c = random(255);
      diam = random(255);
      x = random(width);
      y = random(height);
      
      noStroke();
      fill(r,g,b,c);
      ellipse(x,y,diam,diam);
    }
      
      
    }
  }
