class Seesaw{
  float sideLength = 80;
  float seesawWidth = 300;
  float seesawHeight = 20;
  float degree;
  float currentDegree;
  float left = 0;
  float right = 0;
  
  void display(){
    stroke(0);
    triangle(originX,originY,originX-cos(radians(60))*sideLength,originY+sin(radians(60))*sideLength,
    originX+cos(radians(60))*sideLength,originY+sin(radians(60))*sideLength);
    
    line(originX-seesawWidth/2,originY+sin(radians(60))*sideLength, 
        originX+seesawWidth/2,originY+sin(radians(60))*sideLength);
    
    if(degree > 27)
      degree = 27;
    else if(degree < -27)
      degree = -27;
    
    if(abs(currentDegree - degree) > 0.2){
      if(currentDegree < degree){
        currentDegree += 0.2;
      }else{
        currentDegree -= 0.2;
      }
    }
      
    if (testMode){
      println(currentDegree);
    }
    rotate(radians(currentDegree));
    noFill();
    rect(originX-seesawWidth/2, originY-seesawHeight, 
      seesawWidth, seesawHeight);
  }
  void setDegree(float degree){
    this.degree = degree;
  }
}
