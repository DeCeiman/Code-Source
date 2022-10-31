//Written bij Bora Oksal
class Health2 
{

  float health2 = 200;
  float MAX_HEALTH2 = 200;
  float rectWidth = 200;
  
  void update() 
  { 
    
  }

  //change healthbar color based on amount of health.
  void draw()
  {
    rectMode(CORNER);
    //Red if health =< 25.
    if (health2 < MAX_HEALTH2/4)
    {
      fill(255, 0, 0);
    }  
    //Yellow if health =< 51.
    else if (health2 < MAX_HEALTH2/2)
    {
      fill(255, 200, 0);
    }
    //Green if health is between 52 & 100.
    else
    {
      fill(0, 255, 0);
    }
  
    //Draw bar.
    noStroke();
    //Get fraction 0->1 and multiply it by width of bar.
    float drawWidth = (health2 / MAX_HEALTH2) * rectWidth;
    rect(250, 394, drawWidth, 30);
  
    //Healthbar outline.
    stroke(0);
    noFill();
    rect(250, 394, rectWidth, 30);
  }
  
  void health()
  {
    if (health2 > 0)
    {
      if (powershotInUse) health2 -= 15;
      else health2 -= 10;
    }
  }
  
}
