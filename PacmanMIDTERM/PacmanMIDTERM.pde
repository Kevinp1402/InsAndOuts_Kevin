/* 
Name: Kevin Pintado
Title: Midterm Project

Instructions: Press play to interact with thr second screen
Once inside the game screen press arrow keys in any direction to move around the pacman

//CREDITS//
Code for mouth movement: https://forum.processing.org/two/discussion/19724/build-a-pacman-game.html
*/



color wacky[] = {#FFC0CB, #FFA500,#89CFF0,#FF0000};
int radius = 30;
int movement = 5;
int movement2 = 10;
String screenState = "Begin";
float x = 250;
float y = 250;
float score = 0;



void setup() {
  size(1000, 1000);
  ellipseMode(RADIUS);
  frameRate(8);
}

void draw() {
  
  
  background(random(60,350));
  fill (#FFFF00);
  noStroke();
  moving();
  
// Random color cirlces for the game screen//
for(int i = 0; i <20; i++){
  float radius = (10);
  fill(wacky[ int(random(wacky.length)) ] );
  ellipse(random(width), random(height), radius, radius);
}

// Beginnning Screen//
if (screenState == "Begin"){
  fill(#964B00);
  background(#89CFF0);
  textSize(60);
  text("PACKMAN!",340,470);
  textSize(25);
  text("Click to Begin: ",400,500);
  if(mousePressed){
    screenState = "pac";
  }
}
}

// Code to move pacman left,right,up,down//
void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      x = x - 10;
      movement = -1;
      movement2 = 0;
    }
    else if (keyCode == RIGHT) {  
      x = x + 10;
      movement = 1;
      movement2 = 0;
    }
    else if (keyCode == UP) {
      y = y - 10;
      movement = 0;
      movement2 = -1;
    }
    else if (keyCode == DOWN) { 
      y = y + 10;
      movement = 0;
      movement2 = 1;
    }
  }
}


void moving() {
  for ( int i=-1; i < 2; i++) {
    for ( int j=-1; j < 2; j++) {
      pushMatrix();
      translate(x + (i * width), y + (j*height));
      if ( movement == -1) { 
        rotate(PI);
      }
      if ( movement2 == 1) { 
        rotate(HALF_PI);
      }
      if ( movement2 == -1) { 
        rotate( PI + HALF_PI );
      }
      //Mouth movement code//
      arc(0, 0, radius, radius, map((millis() % 500), 0, 500, 0, 0.52), map((millis() % 500), 0, 500, TWO_PI, 5.76) );
      popMatrix();
      
    }
  }
}
