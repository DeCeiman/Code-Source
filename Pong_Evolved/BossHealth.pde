//Written bij Bora Oksal
class Health 
{

  float health = 200;
  float MAX_HEALTH = 200;
  float rectWidth = 200;
  
  void update() 
  { 
    
  }

  //change healthbar color based on amount of health
  void draw()
  {
    rectMode(CORNER);
    //red if health = <25
    if (health < MAX_HEALTH/4)
    {
      fill(255, 0, 0);
    }  
    //yellow if health = <51
    else if (health < MAX_HEALTH/2)
    {
      fill(255, 200, 0);
    }
    //green if health is between 52 & 100
    else
    {
      fill(0, 255, 0);
    }
  
    // Draw bar
    noStroke();
    // Get fraction 0->1 and multiply it by width of bar
    float drawWidth = (health / MAX_HEALTH) * rectWidth;
    rect(250, 394, drawWidth, 30);
  
    // healthbar outline
    stroke(0);
    noFill();
    rect(250, 394, rectWidth, 30);
  }
  
  void health()
  {
     if (health > 0)
    {
      if (powershotInUse) health -= 15;
      else health -= 10;
    }
  }
  
}
