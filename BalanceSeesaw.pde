float originX = 0;
float originY = 0;
boolean testMode = true;//(true/false)
Seesaw seesaw;

void setup() {
  size(600, 400);
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
}
void mousePressed(){
}
