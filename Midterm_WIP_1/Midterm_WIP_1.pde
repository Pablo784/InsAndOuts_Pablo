// I am going to expand upon SS1_TeachingAChild 
// I used past code for help

float r;
float g;
float b;
float a;

float rect;
float y;

String state = "pregame";
int ellipseY = 0; 


void setup() {
size (1080, 720);
background(105,116,105);
strokeWeight(5);

textAlign(CENTER);
textSize(40);


// The Box
fill(218,227,0);
rect(130, 70, 500, 220);
strokeWeight(10);

// Shape #1
fill(227,152,0);

// Shape 2
fill(227,152,0);
square(395,120,130);

// Shape #3
fill(227,152,0);
circle(224,184,140);


println("This is A Different Version of SS1"); 
}

void draw() {
  r = random(30);
  g = random(30);
  b = random(30);
  a = random(30);
 rect = random(220);
 y = random(30);
 
 drawEllipse();
 drawRect();
 
 
 if (mouseX > width/2) {
   r = r + 2;
 } else { 
   r = r - 2;
 }
 
 if (r > 255) {
   r = 255;
 } else if (r < 0);
  
 {
 
 }
 
 
 if (state == "pregame") {
   background(r,g,b);
   text("Click To Play", width/3, height/3);
 } else if (state == "game") {
   background(255);
   text("This is the game. It's still a W.I.P", width/1, height/1);
   ellipse(mouseX, ellipseY, 100,100);
   ellipseY++;
   if (ellipseY > height+30) {
     state = "gameover";
     ellipseY = 0;
   } else if (state == "gameover") {
     background(210,0,0);
     text("Thank you for playing. Click to try again.", width/2, height/2 + 30);
   }
   
   println(state);  
 }
}
 void mousePressed() {
   if (state == "pregame") {
     state = "game";
   } else if (state == "game") {
     state = "gameover";
   } else if (state == "gameover") {
     state = "pregame";
   }
 }
   
   void drawEllipse() {
     fill(0);
     ellipseMode(CENTER);
     ellipse(110,400,20,50);
   }
   
   
   void drawRect() {
     fill(0);
     rectMode(BOTTOM);
     rect(340,140,140,900);
   }
 
