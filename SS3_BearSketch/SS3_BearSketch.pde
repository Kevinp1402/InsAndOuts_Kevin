PImage Image;
//float opacity = 0;
//float fade = 1;

void setup(){
  size(1000,1000);
  background(#C3B1E1);
  imageMode(CENTER);
  textAlign(LEFT);
  textSize(20);
  
  Image = loadImage("Image.png");
  image(Image,300,400);
}

void draw(){
  
  text("HELLO, WAKE UP MR WEST", width/2,height/2 - 40);
  fill(0);
  
}
