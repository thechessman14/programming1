float x,y; 
void setup(){
 size(500,500);
 x=250;
 y=250;}
void mousePressed(){
  x=mouseX;
  y=mouseY;
}void draw() {
  ellipse(x,y,500,500);
}
  
