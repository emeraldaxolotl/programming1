//Jaya
//escape the mental asylum
//credit to Ella for the idea
void setup(){
  size(900,900);
  textSize(32);
}
void draw(){
  background(149,149,149);
  for(int q = 0; q < 10; q++){
    for(int x = 0; x < 10; x++){
      stroke(0);
      fill(79, 89 + q * 10,89 + x * 10);
      rect(q * 100, x * 100, 100, 100);
    }
  }
}
