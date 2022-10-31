//written by ALtaaf Mangal IG101-B
class TimeUP {
  PImage TimeUP = loadImage("TimePowerUP.png");
  float PosTimeX;  
  float PosTimeY;
  float TimeUpWidth = 230;
  float TimeUpLenght = 140;
  boolean TimeUpHit = false;
  boolean allowTimeUp = true;
  boolean spawnTimeUp = true;
  float addTime = (7*125)/30;
  float spawn = random(10, 25);

  TimeUP() {
    if (currentGameState != 3) {
      PosTimeX = random(284, 484);
      PosTimeY = random (90, 324);
    }

    if (currentGameState == 3) {
      PosTimeX = random(100, 630);
      PosTimeY = random (150, 300);
    }
  }

  void draw() {  
    if (currentGameState > 0) {
      spawnTimeUp = true;
    } else {
      spawnTimeUp = false;
      //  Timediameter = 50;
      allowTimeUp = true;
      TimeUpHit = false;
    }
    if (spawnTimeUp == true & timeBar.remainingTime < (spawn * 125) / 30) {
      imageMode(CENTER);
      image(TimeUP, PosTimeX, PosTimeY, TimeUpWidth, TimeUpLenght);
      fill(255, 0, 0);

      if (dist(ballX, ballY, PosTimeX, PosTimeY) <= 50) {
        TimeUpHit = true;
        if (TimeUpHit && allowTimeUp) {
          PowerUpsPickedUp += 1;
          if (timeBar.remainingTime + addTime > timeBar.barWidth) {
            timeBar.remainingTime = timeBar.barWidth;
          } else {
            timeBar.remainingTime += addTime;
          }
          note.xPos = PosTimeX;
          note.yPos = PosTimeY;
          note.amount = 10;
          note.variable = "seconds";
          if (note.drawNote) {
            note.size = 25;
            note.opacity = 255;
          }
          note.drawNote = true;
          spawnTimeUp = false;
          allowTimeUp = false;
          TimeUpHit = false;
        }
      }
    }
  }
}
