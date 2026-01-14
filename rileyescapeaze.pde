int playerX =0;
int playerY =0;
int goalX =4;
int goalY =4;
boolean gameWon = false;

void setup(){
  size(400,400);
  textSize(20);
}
void draw(){
  background(200);
  for(int i = 0; i<=4; i++){
    for(int a = 0; a<=4; a++){
      stroke(0);
      fill(255);
      rect(i *80,a*80,80,80);
    }
  }fill(0);
   rect(playerX *80,playerY*80,80,80);
   
   fill(#6A2AF7);
   rect(goalX *80,goalY*80,80,80);
   if(gameWon){
     text("YOU WON",200,200);
     noLoop();}
} 
void keyPressed(){
  if(keyCode ==UP && playerY >0){
     playerY--;
  }else if(keyCode==DOWN && playerY<4){
    playerY++;
  }else if(keyCode==LEFT && playerX >0){
     playerX--;
  }else if(keyCode==RIGHT && playerX<4){
    playerX++;
  }
  if(playerX==goalX && playerY ==goalY){
    gameWon =true;
  }
}
  
