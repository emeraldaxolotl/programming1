//Jaya Prasad
//Assignment 2
float x,y;
void setup(){
  size(750,750);
  background(0);
  x= width/2;
  y= height/2;
}
void draw(){
  fill(x,y,111);
  ellipse(x,y,25,25);
}
void mouseDragged(){
  x= mouseX;
  y= mouseY;
}
