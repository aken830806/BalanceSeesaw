float originX = 0;
float originY = 0;
float originExtent = 80;
float seesawWidth = 300;
float seesawHeight = 20;
float degree;
boolean testMode = true;

void setup(){
  size(600,400);
}

void draw(){
  noStroke();
  fill(235,240,242);
  rect(0,0,width,height);
  
  pushMatrix();
  translate(width*0.5, height*0.5);
  stroke(0);
  ellipse(originX,originY,originExtent,originExtent);
  
  if(testMode)
    line(originX-seesawWidth/2,originY+originExtent/2,
    originX+seesawWidth/2,originExtent/2);
  
  degree += 0.2;
  if(degree > 30)
    degree = -30;
  
  println(degree);
  rotate(radians(degree));
  noFill();
  rect(originX-seesawWidth/2,originY-seesawHeight-originExtent/2,
    seesawWidth,seesawHeight);
  popMatrix();
  
}
