//Jaya
//get. to. tree
//squirrel
int squiplayx = 1;
int squiplayy = 1;
int endtreex = 801;
int endtreey = 801;
PImage squiplay;
PImage endtree;
boolean treearrived = false;
void setup(){
  size(900,900);
  textSize(32);
  squiplay = loadImage("feefrevdeswsefefdwed.jpg");
  endtree = loadImage("smellytree.jpg");
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
  image(squiplay,squiplayx,squiplayy,99,99);
  image(endtree,endtreex,endtreey,99,99);
  if(treearrived){
    fill(0,0,0);
    text("You have made it to safety",250,450);
    noLoop();
  }
}
void keyPressed(){
  if (keyCode == UP && squiplayy > 1){
    squiplayy-=100;
  }else if(keyCode == DOWN && squiplayy < 800){
    squiplayy+=100;
  }else if(keyCode == LEFT && squiplayx > 1){
    squiplayx-=100;
  }else if(keyCode == RIGHT && squiplayx < 800){
    squiplayx+=100;
  }
  if(squiplayx == endtreex && squiplayy == endtreey){
    treearrived = true;
  }
}
