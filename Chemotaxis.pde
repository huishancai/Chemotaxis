//declare bacteria variables here   

Bacteria [] boba = new Bacteria[15];

void setup()   
{     
  //initialize bacteria variables here   
  size(500,500);
  frameRate(10);
  
  int i = 0;
  while(i < boba.length) {
    boba[i] = new Bacteria();
    i++;
  }
}   
void draw()   
{    
  //move and show the bacteria   
  background(173, 216, 230);
  
  strokeWeight(3);
  
  //straw
  fill(255,255,255);
  beginShape();
  vertex(230, 150);
  vertex(270, 150);
  vertex(280, 50);
  vertex(240, 50);
  vertex(230, 150);
  endShape();
  
  //milk tea
  fill(247, 231, 200);
  beginShape();
  vertex(371.1, 150);
  vertex(350, 400);
  vertex(150, 400);
  vertex(129.9, 150);
  vertex(371.1, 150);
  endShape();
  
  //boba
  fill(0);
  for(int i = 0; i < boba.length; i++) {
    boba[i].walk();
    boba[i].show();
  }
  
  //cup outline
  line(125, 100, 375, 100);
  line(125, 100, 150, 400);
  line(375, 100, 350, 400);
  line(150, 400, 350, 400);
}  
class Bacteria    
{     
  //lots of java!  
  
  int myX, myY;
  Bacteria()
  {
    myX = 250;
    myY = 160;
  }
  void walk()
  {
    myX = myX + (int)(Math.random()*40)-20;
    myY = myY + (int)(Math.random()*15)+5;
  }
  void show()
  {
    fill(4);
    ellipse(myX, myY, 35, 35);
  }
}  
