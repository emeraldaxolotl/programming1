//axolotl trivia
//Jaya Prasad
int score = 0;
String[] questions = {"Can an axolotl regrow most of its body parts?","Are axolotls endangered?","Are axolotls naturally dark colors?","Are axolotls amphibious?","Do axolotls grow up naturally?",
"Should axolotls eat human food?","Are axolotls legal to own in many states?"};
String current = "";
int index = int(random(0,6));
void setup(){
  size(700,700);
  
}
void draw(){
  background(#A4A7C1);

  for(int i = 0; i < 7; i++){
    textSize(35);
    background(#A4A7C1);
    current = questions[index];
    text(questions[index],30,50);
  }
    fill(#05D602);
  rect(100,470,115,65);
  fill(#D60606);
  rect(410,470,115,65);
  fill(#000000);
  textSize(50);
  text("Yes",120,520);
  text("No",440,520);
  text("your score is " + score,170,630);
}
void keyPressed(){
  if(key == 'Y' && current == questions[0] || current == questions[1] || current == questions[2] || current == questions[3]){
    score++;
  
  } else if(key == 'N' && current == questions[4] || current == questions[5] || current == questions[6]){
    score++;
  }
  if(keyPressed){
    index = int(random(0,7));
  }
}
