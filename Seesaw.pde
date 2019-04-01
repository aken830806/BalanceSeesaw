class Seesaw{
  float sideLength = 80;
  float seesawWidth = 300;
  float seesawHeight = 20;
  float degree;
  float currentDegree;
  
  void display(){
    stroke(0);
    triangle(originX,originY,originX-cos(radians(60))*sideLength,originY+sin(radians(60))*sideLength,
    originX+cos(radians(60))*sideLength,originY+sin(radians(60))*sideLength);
    
    line(originX-seesawWidth/2,originY+sin(radians(60))*sideLength, 
        originX+seesawWidth/2,originY+sin(radians(60))*sideLength);
    
    if(abs(currentDegree - degree) > 0.2){
      if(currentDegree < degree){
        currentDegree += 0.2;
      }else{
        currentDegree -= 0.2;
      }
    }
    if (testMode){
    //  currentDegree += 0.2;
    //  if (currentDegree >= 30)
    //    currentDegree = -30;
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
