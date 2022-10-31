//Written bij Bora Oksal
class Boss2 
{
  float boss2X, boss2Y; //position
  float w, h; //size 
  PImage boss = loadImage("Boss1.png");

  //timer to decide when the boss can teleport
  int wait;
  boolean bossTeleport() {
    return(millis()>=wait);
  }

  void update()
  {
  }

  Boss2() 
  { 
    //Starting coordinates
    boss2X = random(width);
    boss2Y = random(height);
    w = 100;
    h = 100;
  }

  //Movement
  void draw() 
  {
    rectMode(CORNER);
    image(boss,boss2X, boss2Y, w, h);

    if (bossTeleport())
    {
      boss2X = random(width);
      boss2Y = random(height);
      wait = millis() + 6000;
    }
  }
}
