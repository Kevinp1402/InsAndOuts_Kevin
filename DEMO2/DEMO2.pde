PImage cupcake; // Creates a PImage object called cupcake

void setup() {
  size (500, 500);
  background (255);
  imageMode(CENTER);
  textAlign(CENTER);
  textSize(88);
  
  
  cupcake = loadImage("cupcake.png");
}

void draw (){
  background(125,60,0);
  
  //fill(opacity);//
  text("CUPCAKE!", width/2,height/2 - 50);
  
  
  image(cupcake, width/2, height/2);
}
