import processing.serial.*;

Serial myPort;
int val = 0;


void setup(){
size(1200,700);
ellipseMode(CENTER);
String [] portList = Serial.list();  // Use port 2 
  printArray(portList);
  String portName = Serial.list()[2];
  myPort = new Serial(this , portName, 9600);
  }




void draw() {
  background(#00008B);
  fill(0, 205, 50);
  triangle(420, 400, 550, 70, 700, 400);
  fill(255,255,255);     //background snow
//rect(0,(550-frameCount/5), width, (50+frameCount/5));

  fill(137, 100, 90);  //stump
  rect(540, 400, 40, 80);  
  
  fill(255, 255, 255);  //snow in front of stump
  //rect(0,(560-frameCount/5),width,(frameCount/5)); 
  
 fill(#964B00); 
ellipse(950, 400, 220, 220);


rect(500, 450, 400, 180, 28);

rect(860, 200, 50, 160, 28);

rect(1000, 200, 50, 160, 28);

rect(530, 550, 50, 160, 28);

rect(780, 550, 50, 160, 28);

fill(0);
ellipse(1000, 400, 30, 60);
ellipse(950, 400,30,60);
ellipse(980, 470,30,60);

}
