float[] xPosition = new float[9];
float[] yPosition = new float[9];
boolean[] moleIsUp = new boolean[9];
int score =0;
int timer =0;
void setup(){
size(450,450);
int index =0;
for(int row=0; row<3; row++){
  for(int col=0; col<3; col++){
    xPosition[index]=75+col*150;
    yPosition[index]=75+row*150;
    moleIsUp[index]=false; 
    index++;
  }
 }
}
void draw(){
  background(255);
  for(int i=0; i<9; i++){
    fill(#5A4510);
    ellipse(xPosition[i],yPosition [i],120,60);
    
    if(moleIsUp[i]){
      fill(#4CE32C);
  ellipse(xPosition[i],yPosition[i],80,80);
  }
 }
 if(frameCount %60==0){
   int randomIndex = (int)random(9);
 moleIsUp[randomIndex]= !moleIsUp[randomIndex];
}
fill(#0F89D3);
textSize(40);
text(score,20,50);
}

void mousePressed(){
  for(int i=0;i<9;i++){
  float d = dist(mouseX,mouseY,xPosition[i],yPosition[i]);
  if( moleIsUp[i] && d<40){
    moleIsUp[i]=false;
    score++;
    }
  }
}
