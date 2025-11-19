int spaceshipX; 
int bulletX= -10;
int bulletY = -10;
boolean bulletFired = false;
boolean[] isAlive = {true,true,true,true,true};
PImage photo;
int[] alienX = {150,210,270,330,390};
int score = 0;
void setup(){
  size(600,600);
  spaceshipX = width/2;
  photo = loadImage("spaceship.PNG");
}
void draw(){
  background(0);
  fill(0,255,0);
  rect(spaceshipX,height-40,40,20);
  fill(255,0,0);
  for(int i=0;i<5; i++){
    if(isAlive[i]){
      rect(i*60+150,50,40,40);
    }
  }
  if(bulletFired){
    fill(255);
    rect(bulletX,bulletY,4,15);
    bulletY-=15;
    if (bulletY<0){
      bulletFired = false;
    }
    for(int i = 0; i<5;i++){
      if(isAlive[i]){
        if(bulletX > alienX[i] && bulletX< alienX[i] +40 && bulletY > 50 && bulletY<90){
          isAlive[i] = false;
          bulletFired = false;
          score +=1;
        }
      }
    }
  } 
  textSize(20);
 text(score, 10,100); 
}
void keyPressed(){
  if(keyCode ==LEFT && spaceshipX >0){
    spaceshipX -=15;
  }else if(keyCode == RIGHT && spaceshipX< width-40){
    spaceshipX +=15;
  }else if(key==' '){
  if(!bulletFired){
  bulletFired = true;
  bulletX = spaceshipX + 18;
  bulletY = height -40;
      }
    }
  } 

  
  
    
