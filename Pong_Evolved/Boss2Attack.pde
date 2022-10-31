//Written bij Bora Oksal.

class Boss2Attack { 

//declaring coordinates
//point position (set by ball), used for line collision
float px = 0;     
float py = 0;

float x1 = theBoss2.boss2X;   
float y1 = theBoss2.boss2Y;
float x2 = ballX;
float y2 = ballY;

//to let the laser chase the player instead of instantly hitting them
float x;
float y;
float easing = 0.05;

int time = millis();

boolean bossShooting;
long startTime;
final int SHOOT_DURATION = 1500;

void draw() 
{

  //set point to ball coordinates
  px = ballX;
  py = ballY;
  
  //laser chasing the player
  float targetX = ballX;
  float dx = targetX - x;
  x += dx * easing;
  
  float targetY = ballY;
  float dy = targetY - y;
  y += dy * easing;
 
  if (bossShooting)
  {
      // check for collision
      // if hit, player loses 1 life
      boolean hit = linePoint(theBoss2.boss2X,theBoss2.boss2Y, x,y, px,py);
      if (hit && !powershotInUse)
      {
       lives.playerlives -=1;
       bossShooting = false;
       LivesLost += 1;
       ballX = width/2;
       ballY = height/2;
       screenShakeTimerHit = 0.5;
       note.xPos = x;
       note.yPos = y;
       note.amount = -1;
       note.variable = "life";
       if (note.drawNote) {
         note.size = 25;
         note.opacity = 255;
       }
       note.drawNote = true;
      }
      //draw the laser from the boss to the target location declared above
      stroke(50, 168, 82);
      strokeWeight(2);
      line(theBoss2.boss2X,theBoss2.boss2Y, x,y);
      
      //if 2 seconds have passed, boss pauses shooting
      if (millis() - startTime > SHOOT_DURATION)
      {
        bossShooting = false;
      }
  } 
}

//LINE/POINT
boolean linePoint(float x1, float y1, float x2, float y2, float px, float py) 
{

  //get distance from the point to the two ends of the line
  float d1 = dist(px,py, x1,y1);
  float d2 = dist(px,py, x2,y2);

  //get the length of the line
  float lineLen = dist(x1,y1, x2,y2);

  //adding buffer zone to give collision cause float is way too accurate
  float buffer = 0.1;    //higher # = less accurate

  //if the two distances are equal to the line's length,
  //the point is on the line
  //using the buffer here to give a range, 
  //rather than one #
  if (d1+d2 >= lineLen-buffer && d1+d2 <= lineLen+buffer) {
    return true;
  }
  return false;
}

  void update()
  {
    if (millis() > time + 6000)
    {
      //boss can shoot again and the cooldown timer resets
      bossShooting = true;
      startTime = millis();
      time = millis();
    }
  }
}
  
