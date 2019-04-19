PFont font;
float originX = 0;
float originY = 0;
boolean testMode = true;//(true/false)
Seesaw seesaw;

void setup() {
  size(600, 400);
  font = createFont("Arial",1);
  seesaw = new Seesaw();
}
void draw() {
  noStroke();
  fill(235, 240, 242);
  rect(0, 0, width, height);
  
  pushMatrix();
  
  translate(width*0.5, height*0.5);
  seesaw.display();
  
  popMatrix();
  if(testMode){
    fill(0);
    textFont(font,20);
    text("Degree:"+int(seesaw.degree),30,30);
    text("Left:"+int(seesaw.left),30,60);
    text("Right:"+int(seesaw.right),30,90);
  }
}
void mousePressed(){
   if(mouseButton == LEFT){
    seesaw.left += 10;
   }else if (mouseButton == RIGHT)
    seesaw.right += 10;
    
   if(seesaw.left > seesaw.right){
      seesaw.degree -= 10;
    }else if(seesaw.left < seesaw.right){
      seesaw.degree += 10;
    }
}
