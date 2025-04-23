//jaya flower garden
int maxFlowers = 100;
int currentFlowers = 0;
float[] x = new float[maxFlowers];
float[] y = new float[maxFlowers];
float[] angle = new float[maxFlowers];
float[] swaySpeed = new float[maxFlowers];
String[] flowerType = new String[maxFlowers];
String[] flowers = {"red bluebell","daisy","muscari"};
void setup(){
  size(600,600);
}
void draw(){
  background(#9DD2F2);
  drawGround();
  for(int k = 0; k < currentFlowers; k++){
    angle[k] += swaySpeed[k];
    pushMatrix();
    translate(x[k],y[k]);
    rotate(sin(angle[k] * 0.1));
    drawFlower(flowerType[k]);
    popMatrix();
  }
}
void drawGround(){
  fill(#6BD36F);
  noStroke();
  rect(0,475,600,500);
}
void drawFlower(String type){
  stroke(0,100,0);
  strokeWeight(3);
  line(0,0,0,30);
  noStroke();
  if(type.equals("red bluebell")){
    fill(255,100,100);
    triangle(-10,0,0,-20,10,0);
    ellipse(0,-10,20,15);
  }else if(type.equals("daisy")){
    fill(255);
    for(int i = 0; i < 8; i++){
      float petal = TWO_PI /8 * i;
      float px = cos(petal) * 10;
      float py = sin(petal) * 10 - 10;
      ellipse(px,py,10,15);
    }
    fill(255,200,0);
    ellipse(0,-10,10,10);
  }else if(type.equals("muscari")){
    fill(#729ADE);
    ellipse(0,-5,10,10);
    ellipse(0,0,10,10);
    ellipse(5,0,10,10);
    ellipse(5,-5,10,10);
    ellipse(2.5,-10,10,10);
  }
}
void mousePressed(){
  if(currentFlowers < maxFlowers){
    x[currentFlowers] = mouseX;
    y[currentFlowers] = mouseY;
    angle[currentFlowers] = random(TWO_PI);
    swaySpeed[currentFlowers] = random(0.01,0.03);
    flowerType[currentFlowers] = flowers[(int)random(flowers.length)];
    currentFlowers++;
  }if(currentFlowers >= maxFlowers){
    fill(0);
    textSize(25);
    text("you have reached the max number of flowers.",100,100);
  }
}
