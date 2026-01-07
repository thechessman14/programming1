String scene = "start"; 
void setup(){
  size(700,400);
  textAlign(CENTER,CENTER);
  textSize(20);
} 
void draw(){ 
  background(255);
  if(scene.equals("start")){
    drawScene("you wake up in a perfectly rectanglar room with white walls and nothing \n in it there are two doors on opposite sides of the room. Which door do you chose.","the bigger one","the smaller one");
  } else if(scene.equals("the smallar one")){
    drawScene("you open the smallar door and come into a room exactly identical to the one before but smaller","duble back through the door you came from","open the even smallar door");
  } else if(scene.equals("the bigger one")){
    drawScene("you open the bigger door and come into a room exactly identical to the one before but bigger","duble back through the door you came","open the even bigger door");
  }
  else if(scene.equals("open the even smaller door")){
    drawEnd("you open the door and find your self in your house but smaller compaired to your size");
  } 
  else if(scene.equals("duble back through the door you came from")){ 
    drawEnd("as you step in the room both doors, the smaller and the bigger vanish. You slowly starve to death");
  }
  else if(scene.equals("duble back through the door you came ")){
    drawEnd("as you step in the room both doors, the smaller and the bigger vanish. You slowly starve to death");
}
  else if(scene.equals("open the even bigger door")){
   drawEnd( "you open the door and find your self in your house but larger compaired to your size");
  }
}
  void drawScene(String story,String Option1,String option2){
    fill(0);
    text(story,width/2,120);
    
    fill(255);
    rect(100,250,150,60,10);
    fill(0);
    text(Option1,175,275);
    
    fill(255);
    rect(400,250,150,60,10);
    fill(0);
    text(option2,475,275);}
    void drawEnd(String story){
      fill(0);
      text(story,width/2, height/2);
      text("/n(click to restart)",width/2,height/2+80);
    }
  void mousePressed(){
    if(scene.equals("open the even smaller door") || scene.equals("duble back through the door you came from")
    || scene.equals("duble back through the door you came from") || scene.equals("open the even bigger door")){
      scene = "start";
      return;
    }
    boolean clickedLeft = mouseX >150 && mouseX<300 && 
    mouseY >250 && mouseY<310;
    boolean clickedRight = mouseX >175 && mouseX<300 && 
    mouseY >250 && mouseY<310;
    
    if(scene.equals("start")){
      if(clickedLeft) scene = "the bigger one";
      if(clickedRight) scene ="the smaller one";
    }else if(scene.equals("the bigger one")){
      if(clickedLeft) scene ="duble back through the door you came";
      if(clickedRight)scene ="open the even bigger door";
    }else if(scene.equals("the smaller one")){ 
        if (clickedLeft) scene ="open the even smaller door";
        if (clickedRight) scene ="duble back through the door you came from";
      }
  }
    
  
 
  
    
