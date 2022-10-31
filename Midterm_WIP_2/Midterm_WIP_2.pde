// Wanted to add the pacman on the screen and move it around//

int radius = 30;
int movement = 5;
int movement2 = 10;
String screenState = "Begin";
float x = 250;
float y = 250;


void setup() {
  size(1000, 1000);
  ellipseMode(RADIUS);
}  


void draw() {
 moving();
 
 // Beginnning Screen//
if (screenState == "Begin"){
  fill(#FFFF00);
  background(0);
  textSize(60);
  text("PACKMAN!",350,400);
  textSize(50);
  text("Click to Begin: ",350,450);
  if(mousePressed){
    screenState = "pac";
  }
}
}
     
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
