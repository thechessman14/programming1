PImage pokemon;
PFont title; 
String name = "arceus";
PImage attack; 
PImage steel;
PImage scull;
void setup(){
  size(450,600); 
  background(#489CF7);
  pokemon = loadImage("images.jpg");
  attack = loadImage("attack 1.png");
  steel = loadImage("attack 2.png");
  scull = loadImage("attacks.jpg");
}
  
void draw(){ 
  textSize(15);
  text("HP: 120",190,445);
  text("Attack: 120",170,495);
  text("Defense: 120",160,470);
  text("Special Attack: 120",135,520); 
  text("Special Defense: 120",135,545);  
  textSize(30);
  text(name,160,70); 
  image(pokemon,60,80,305,350); 
  image(attack,10,550,50,50);
  image(steel,210,550,50,50);
  image(scull,390,550,50,50);
}  
 
