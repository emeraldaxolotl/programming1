//Jaya Prasad
//Pokemon Cards
String name;
String HP;
String abilitytitle;
String ability;
String power1title;
String power1damage;
String power1;
String power2title;
String power2damage;
String power21;
String power22;
String pokedexentry1;
String pokedexentry2;
PImage wooper;
PImage watersymbol;
PImage groundsymbol;
PImage normalsymbol;
// watersymbol is the wooper water symbol
void setup(){
  size(400,650);
  background(100);
  wooper=loadImage("wooper.jpg");
  watersymbol=loadImage("watersymbol.jpg");
  groundsymbol=loadImage("fightingtype.jpg");
  normalsymbol=loadImage("normaltype.jpg");
  name="Wooper";
  HP="HP 140";
  abilitytitle="Tidal Wave";
  ability="Switch your opponent's active Pokemon once every 5 turns.";
  power1title="Polar Waters";
  power1damage="40";
  power1="Flip a coin. If it lands on tails, your opponent is Paralyzed.";
  power2title="Overflow";
  power2damage="60";
  power21="Do ten damage to your opponent's Pokemon";
  power22="for every energy on all of your Pokemon";
  pokedexentry1="Wooper lives in water, but will go on land to find food.";
  pokedexentry2= "When it's on land, it coats itself in a poisonous film.";
}
void draw(){
  fill(150,220,255);
  rect(50,50,300,570);
  image(wooper,75,85,250,210);
  image(watersymbol,275,55,35,35);
  image(groundsymbol,310,55,35,35);
  image(watersymbol,70,370,25,25);
  image(normalsymbol,100,370,25,25);
  image(watersymbol,112,460,25,25);
  image(groundsymbol,85,460,25,25);
  image(normalsymbol,60,460,25,25);
  fill(0);
  textSize(20);
  text(name,65,75);
  textSize(20);
  text(HP,210,78);
  text(abilitytitle,150,325);
  textSize(11);
  text(ability,70,345);
  textSize(20);
  text(power1title,140,385);
  text(power1damage,300,385);
  textSize(11);
  text(power1,75,410);
  textSize(20);
  text(power2title,160,480);
  text(power2damage,300,480);
  textSize(14);
  text(power21,60,510);
  text(power22,60,530);
  textSize(12);
  text(pokedexentry1,60,560);
  text(pokedexentry2,60,580);

}
