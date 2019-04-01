float originX = 0;
float originY = 0;
float sideLength = 80;
float seesawWidth = 300;
float seesawHeight = 20;
float degree;
boolean testMode = true;//(true/false)

void setup() {
  size(600, 400);
}

void draw() {
  noStroke();
  fill(235, 240, 242);
  rect(0, 0, width, height);

  pushMatrix();
  translate(width*0.5, height*0.5);
  stroke(0);
  triangle(originX,originY,originX-cos(radians(60))*sideLength,originY+sin(radians(60))*sideLength,
  originX+cos(radians(60))*sideLength,originY+sin(radians(60))*sideLength);

  if (testMode){
    line(originX-seesawWidth/2,originY+sin(radians(60))*sideLength, 
      originX+seesawWidth/2,originY+sin(radians(60))*sideLength);
    degree += 0.2;
    if (degree >= 30)
      degree = -30;
    println(degree);
  }
  rotate(radians(degree));
  noFill();
  rect(originX-seesawWidth/2, originY-seesawHeight, 
    seesawWidth, seesawHeight);
  popMatrix();
}
