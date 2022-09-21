// Decided to do a fall tree with diffrent color leaves when mouse is pressed

float k = 150;
float s = 140;
float p = 80;

void setup() {
size(700,700);
background(#FF8C00);

// Message across screen
textSize(60);
String Fall = "FALL IS COMING!";
fill(5);
text(Fall, 120, 130, 700, 620); 
}

void draw() {
 // Tree Bark
  fill(#654321);
 rect(270, 450, 100, 300);
 
 // Random colors effect
 fill(#FFFF00);
 stroke(150,140,80);
  strokeWeight(7);
  if (mousePressed == true){
    k = random(0,255);
    s = random(0,255);
    p = random(0,255);

  }  else {
     fill(k,s,p);
} 
// Leaves
ellipse(250, 400, 200, 200);
  ellipse(440, 400, 200, 200);
  ellipse(350, 340, 200, 200);
  ellipse(360, 440, 200, 200);
}
