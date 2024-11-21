//squirrelsquirrelsquirrelsquirrelsquirrelsquirrelsquirrelsquirrelsquirrel
//i did that cause i got bored
//Jaya's lake invaders game (you are an axolotl)
//I'm so excited to do this!
//plaxolx is short for playeraxolotlx
//in process(not finished)
PImage axo;
PImage suscarp;
PImage bubble;
int plaxolx;
boolean bubbleFired = false;
int bubblex = -10;
int bubbley = -10;
void setup(){
  size(600,600);
  axo = loadImage("sleepyaxolotl.jpg");
  suscarp = loadImage("dacarp.jpg");
  bubble = loadImage("minecraft_bubble.png");
  plaxolx = width/2;
}
void draw(){
  background(80,100,200);
  fill(120,245,150);
  image(axo,plaxolx,550,55,75);
  fill(100,100,100);
  for(int n = 0; n < 7; n++){
    image(suscarp, n*60+50,50,40,40);
  }
  if(bubbleFired){
    image(bubble,bubblex,bubbley,23,23);
  }
}
void keyPressed(){
  if(keyCode == LEFT && plaxolx > 0){
    plaxolx -=10;
  }else if(keyCode == RIGHT && plaxolx < width - 40){ 
    plaxolx +=10;
  }else if(key == ' '){
    if(!bubbleFired){
      bubbleFired = true;
      bubblex = plaxolx + 20;
      bubbley = height - 40;
    }
  }
}
