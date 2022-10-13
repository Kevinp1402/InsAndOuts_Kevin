int currentTime = 0;
int time1 = 2000;
int time2 = 5000;
int ellipseX = 0;
//ellipseMode(CENTER);

void setup(){
  size(500,500);
  background(680);
}

void draw(){
currentTime = millis();
 ellipse(ellipseX, height/2, 200,200);

if(currentTime > time2){
  background(255);
  println("Timer 1 is triggered");
   
}

else if (currentTime > time1){
  
 background(557);
 rect(120,80,220,220);
 println("BOOM!");
}
}
