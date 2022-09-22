
PImage basket;
PImage apple;
PImage carrot;
float x;
float y;
float targetX;
float targetY;
float easing = .05;
float grow = 20;
int pos;
void setup(){
  size (600,600);
  imageMode(CENTER);
  //frameRate(300);
  noStroke();
  basket = loadImage("basket.png");
}
void draw (){
  background(50);
  basket.resize(100, 0);
  image(basket, x, y);
  ellipse (x, y, grow, grow);
  float dx = targetX - x;
  float dy = targetY - y;
  x += dx *easing;
  y += dy *easing;
  println(dx * easing);
  if(mouseY>height/2){
  grow = grow + .1;
  }
  if (mousePressed){
    targetX = mouseX;
    targetY = mouseY;
  }
}
