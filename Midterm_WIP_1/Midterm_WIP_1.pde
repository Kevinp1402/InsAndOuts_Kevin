// WIP decided to just begin with the start screen and a click to start function//


String screenState = "Begin";

void setup() {
  size(1000, 1000);
  
}

void draw() {
if (screenState == "Begin"){
  fill(#FFFFFF);
  background(#FFA500);
  textSize(60);
  text("PACKMAN!",340,470);
  textSize(25);
  text("Click to Begin: ",400,500);
  if(mousePressed){
    screenState = "pac";
  }
}
}
