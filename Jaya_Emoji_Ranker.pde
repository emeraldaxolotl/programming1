//Jaya Prasad
//Emoji ranker
//"The moai emoji is so moai emoji, it's a moai emoji"-Jaya Prasad, 2024
PFont noto;
int moai = 0;
int paint = 0;
int honey = 0;
void setup(){
  size(600,500);
  noto = createFont("Noto Sans", 50);
}
void draw(){
  background(#05F097);
  textSize(16);
  text("Votes: " + moai,30,180);
  text("Votes: " + paint,200,180);
  text("Votes: " + honey,400,180);
  textSize(32);
  textFont(noto);
  fill(#616262);
  text("🗿",30,150);
  text("🎨",200,150);
  text("🍯",400,150);
  String winner = " ";
  if(moai > paint && moai > honey){
    winner = "moai";
    fill(255,0,0);
  }else if(paint > moai && paint > honey){
    winner = "paint";
  }else if(honey > moai && honey > paint){
    winner = "honey";
  }else{
    fill(0);
  }
  text(winner, 200, 400);
}
void keyPressed(){
  if(key == 'm'){
    moai++;
  }else if(key == 'p'){
    paint++;
  }else if(key == 'h'){
    honey++;
  }
}
