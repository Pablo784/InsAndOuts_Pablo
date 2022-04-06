/*
 Due to time constraints, I am going to do something else with SS1. 
// I used code from... 
- our class github Repo 
- past code 
- my own repo for help
- The Proccessing Website
Using the Feedback from my classmates I will re-design My Midterm Final
*/


/*
RESOURCES I LOOKED AT BUT DIDN'T IMPLEMENT (CREDIT GOES TO THOSE PEOPLE REGARDLESS)
- http://learningprocessing.com/examples/chp17/example-17-02-textalign

- https://youtu.be/JwQ43aBGz0E // I clicked on this link to get to the link below

- https://github.com/theartboy/lectureDemosProgramming/blob/master/gameStateCatcher/gameStateCatcher.pde
*/

int counter = 0;

PFont font1;

float x = 200;
float y = 0;

float speed = 4;
float gravity = 0.2;


int [] food = new int[5];
int typeFood = 0;

String[] foods = {"cheese", "burrito", "pizza","brocoli","sausage"};
int positionFoods = 0;

float opacity = 3; 
float fade = 1;


int ellipseX = 0;

String state= "pregame"; //storing our states as Strings 

int ellipseY=3; //y value of ellipse

void setup() {
  font1 = loadFont("AvenirNextCondensed-BoldItalic-48.vlw");
  size (1080, 700);
  textAlign(CENTER);
  textSize(36);
  
  food[0] = 33;
  food[1] = 4;
  food[2] = 6;
  food[3] = 5;
  food[4] = 11; 
}


void draw() {
  background(0);
  textFont(font1, 26);
  println(foods[positionFoods]);
 
  if (state=="pregame") {
    pregame();
  } else if (state=="game") {
    game();
  } else if (state=="game over") {
    gameover();
    text(counter,width/2,height/2);
  }
  println(state);
}
void drawEllipse() {
  fill(12,44,100);
  strokeWeight(14);
  ellipseMode(LEFT);
  ellipse(40,20,100,120);
}

void drawRect() {
  fill(255);
  strokeWeight(14);
  rectMode(RIGHT);
  rect(40,20,100,120);
}

//triggers different states depending on which state already in
void mousePressed() {
  positionFoods = 0;
  if (positionFoods == food.length - 1) {
    positionFoods = 0;
  } else {
    positionFoods++;
  }
  
  positionFoods = int(random(0,food.length));
  
  if (state== "pregame") {
    state="game";
  } else if (state=="game over") {
    state= "pregame";
  }
}

void pregame() {
  background(0);
  fill(opacity);
  textSize(23);
  text("CLICK TO PLAY: ENDURANCE KEY", width/2, height/2 - 50);
  text("THE NUMBER YOU WILL SEE AT THE THE END IS YOUR PRESSES PER MINUTE",width/2,height/2 - 0);
  text("INSTRUCTIONS: USE THE WASD KEYS TO TEST YOUR ENDURANCE OF PRESSING THE KEYS ON YOUR KEYBOARD",width/2,height/2 + 50);
  opacity = opacity + fade;
  if (opacity > 2555 || opacity < 0) {
    fade = -fade;
  }
}

void game() {
  background(105, 116, 105); 
  fill(218,227,0);
  text("YOU VS THE CIRCLE. GO!!!", width/2, height/2);
  fill(227,152,0);
  strokeWeight(10);
  ellipse(mouseX, ellipseY, 100, 100);
  ellipseY++;
  //when ellipse reaches bottom of screen the game is over
  if (ellipseX>width+50) { 
    state="game over";
    ellipseY=0; //reset ellipseY value
  }
}

void keyPressed() { 
  if(state=="game") {
    counter++;
    strokeWeight(5);
    fill(227,152,0);
    rect(x,y,20,20);
     square(395,120,130);
     ellipseX+=40;
    y = y + speed;
    speed = speed + gravity;
    if (y > width) {
      speed = speed * -0.99;
      y = width;
  }
} 
}


void gameover() {
  background(126, 85, 8);
  text("TIMES UP!!!", width/2, 160);
  text("Click to play again", width/2, + 50);
  
  drawEllipse();
  drawRect();
}
