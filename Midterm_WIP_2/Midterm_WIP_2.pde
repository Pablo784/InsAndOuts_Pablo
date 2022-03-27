// I am still expanding upon SS1_TeachingAChild 
// I used code from our class github Repo, past code, and my own repo for help

int counter = 0;
float r,g,b=0;
int x=0;

String state= "pregame"; //storing our states as Strings 

int ellipseY=0; //y value of ellipse

void setup() {
  size (700, 700);
  textAlign(CENTER);
  textSize(36);
}


void draw() {
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
  fill(0);
  ellipseMode(CENTER);
  ellipse(100,40,100,200);
}

void drawRect() {
  fill(255);
  rectMode(CORNER);
  rect(40,500,300,200);
}



//triggers different states depending on which state already in
void mousePressed() {
  if (state== "pregame") {
    state="game";
  } else if (state=="game over") {
    state= "pregame";
  }
}

void pregame() {
  background(0);
  fill(5,180,12);
  text("CLICK TO PLAY: Stamina Key", width/2, height/2);
}

void game() {
  background(0, 0, 255);
  fill(255);
  textSize(15);
  text("INSTRUCTIONS: Rapidly Press Any key on your keyboard while the circle is falling", width/2, height/2);
  text("",width/5,height/5);
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
  }
}


void gameover() {
  background(139, 0, 0);
  textSize(21);
  text("Click to Play Again", width/4,height/4);
  drawEllipse();
  drawRect();
  println("Your Score is: " + counter); 
}
  
  
  
