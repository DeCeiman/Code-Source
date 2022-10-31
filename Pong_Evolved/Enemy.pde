//Written bij Bora Oksal
class Boss 
{
  float bossX, bossY; //boss position
  float w, h; //boss size 
  float bossSpeed = 1.5;
  PImage boss = loadImage("Boss1.png");
  
  void update()
  {
    
  }
  
  Boss() 
  { 
    //starting coordinates
     bossX = 545;
     bossY = 75;
     w = 100;
     h = 100;
  }
  //movement
  void draw() 
  {
    rectMode(CORNER);
    image(boss, bossX, bossY,w,h);
    
    if(bossY == 30) //traveling along the top
      bossX += bossSpeed;
    if(bossY == 249) //traveling along the bottom
      bossX -= bossSpeed;
    if(bossX == 545) //traveling along the right side
      bossY += bossSpeed;
    if(bossX == 119) //traveling along the left side
      bossY -= bossSpeed;
      
  }
}
