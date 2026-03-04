int[][] board ={
  {0, 0, 0, 0, 5, 0, 0, 0, 0},
  {0, 0, 0, 0, 0, 1, 2, 0, 0},
  {5, 3, 0, 9, 0, 4, 0, 7, 0},
  {0, 0, 0, 0, 9, 5, 0, 0, 0},
  {0, 0, 0, 0, 8, 0, 0, 0, 4},
  {0, 0, 7, 3, 0, 0, 6, 0, 0},
  {0, 0, 1, 0, 0, 0, 0, 0, 0},
  {4, 0, 0, 0, 3, 0, 0, 0, 2},
  {0, 0, 6, 0, 0, 0, 8, 9, 0}};
int cellsize=60;
int selectedrow=-1;
int selectedcol=-1;
void setup() {
  textSize(30);
  size(540, 540);
  textAlign(CENTER, CENTER);
}
void draw() {
  background(255);
  drawGrid();
}
void drawGrid(){
  for (int r=0; r<9; r++) {
    for (int c=0; c<9; c++) {
      int x=c*cellsize;
      int y=r*cellsize;
      if (r==selectedrow && c==selectedcol) {
        fill(220, 240, 255);
      } else {
        fill(255);
      }
      stroke(200);
      rect(x, y, cellsize, cellsize);
      if (board[r][c]!=0) {
        fill(0);
        text(board[r][c], x+cellsize/2, y+cellsize/2);
      }
    }
  }
strokeWeight(3);
stroke(0);
for(int i=0;i<=9;i+=3){
line(i*cellsize,0,i*cellsize,height);
line(0,i*cellsize,width,i*cellsize);}
strokeWeight(1);}
void mousePressed(){
  selectedcol=mouseX/cellsize;
  selectedrow=mouseY/cellsize;}
  void keyPressed(){if(selectedrow!=-1 && key>='1' &&key<='9'){
    int val=key-'0';
    if(isSafe(board,selectedrow,selectedcol,val)){
      board[selectedrow][selectedcol]=val;
    } }else if(key==BACKSPACE|| key==DELETE){
      board[selectedrow][selectedcol]=0;
    }
  }
  boolean isSafe(int[][]num,int row,int col,int val){
    for(int x=0; x<9;x++){
      if(num[row][x]==val||num[x][col]==val)return false;
    }
    int startrow=row-(row%3);
    int startcol=col-(col%3);
    for(int i=0;i<3; i++){
      for(int j=0;j<3;j++){
        if(num[i+startrow][j+startcol]==val)return false;
      }
    }
  return true;
  }
