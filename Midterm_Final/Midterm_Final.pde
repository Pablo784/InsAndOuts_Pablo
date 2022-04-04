// Due to time constraints, I am going to do something else with SS1
// I used code from our class github Repo, past code, and my own repo for help

int counter = 0;

PFont font1;

float x = 200;
float y = 0;

float speed = 0;
float gravity = 0.2;


int [] food = new int[5];
int typeFood = 0;

String[] foods = {"cheese", "burrito", "pizza","brocoli","sausage"};
int positionFoods = 0;

float opacity = 3; 
float fade = 1;

int time1 = 20000;
int time2 = 3000;

String state= "pregame"; //storing our states as Strings 

int ellipseY=0; //y value of ellipse

void setup() {
  font1 = loadFont("Avenir-HeavyOblique-48.vlw");
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
  ellipseMode(CENTER);
  ellipse(40,20,100,120);
}

void drawRect() {
  fill(255);
  strokeWeight(14);
  rectMode(CORNER);
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
  text("CLICK TO PLAY: ELLIPSE RACE", width/2, height/2 - 50);
  text("INSTRUCTIONS: USE THE WASD KEYS TO RACE THE CIRCLE",width/2,height/2 + 50);
  opacity = opacity + fade;
  if (opacity > 255 || opacity < 0) {
    fade = -fade;
  }
}

void game() {
  background(105, 116, 105); 
  fill(218,227,0);
  text("YOU VS THE CIRCLE", width/2, height/2);
  fill(227,152,0);
  strokeWeight(10);
  ellipse(mouseX, ellipseY, 100, 100);
  ellipseY++;
  //when ellipse reaches bottom of screen the game is over
  if (ellipseY>height+50) { 
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
    y = y + speed;
    speed = speed + gravity;
    if (y > width) {
      speed = speed * -0.99;
      y = width;
  }
}
  }

void gameover() {
  background(170, 3, 23);
  text("GAME OVER!!!", width/5, height/5 + 50);
  text("Click to play again",width/2,height/2 - 50);
  text(" is your score ", + counter + width/2, height/2 + 50);

  drawEllipse();
  drawRect();
}
