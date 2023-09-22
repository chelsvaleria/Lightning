int startX = 0;
int startY = 250;
int endX = 0;
int endY = 250;
void setup(){
  size(500,500);
  strokeWeight(6);
  background(255,255,255);
}
void draw(){
  background(255,255,255); 
  stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  while(endX<501){
    noLoop();
    endX = startX + ((int)(Math.random()*10));
    endY = startY + ((int)((Math.random()*19)-9));
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
  }
  frameRate(5);
  int headY = (int)(Math.random()*501);
  person(headY);
  int lastYCoordinate = endY;
  if(lastYCoordinate < (headY + 10) && lastYCoordinate > (headY - 10)){
    frameRate(0);
    fill(0);
    textSize(24);
    textAlign(CENTER);
    text("You Got Him!",250,100);
    delay(1);
  }
}
void mousePressed(){
  redraw();
  startX = 0;
  startY = 250;
  endX = 0;
  endY = 250;
}
void person(int y){
  int headY = y;
  stroke(0,0,0);
  //head
  fill(0,0,0);
  ellipse(485,headY,20,20);
  //torso
  line(485,y+10,485,y+40);
  //arms
  line(470,y+25,495,y+25);
  //legs
  line(485,y+40,470,y+50);
  line(485,y+40,500,y+50);
}


