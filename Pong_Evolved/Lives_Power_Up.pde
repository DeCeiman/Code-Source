//written by ALtaaf Mangal IG101-B,
class LiveUp {

  float PosLivesX;  
  float PosLivesY;
  float LiveUpdiameter = 50;
  boolean PowerupHit = false;
  boolean allowLiveUp = true;
  boolean spawnPowerup = true;
  float spawn = random(10, 25);

  //  PowerupHit = false;
  {
    if (currentGameState != 3) {
      PosLivesX = random(284, 484);
      PosLivesY = random (90, 324);
    }

    if (currentGameState == 3) {
      PosLivesX = random(100, 630);
      PosLivesY = random (150, 300);
    }
  }

  void displaypowerup() {
    if (currentGameState > 0) {
      spawnPowerup = true;
    } else {
      spawnPowerup = false;
      allowLiveUp = true;
      PowerupHit = false;
    }
    if (spawnPowerup == true & timeBar.remainingTime < (spawn * 125) / 30) {
      imageMode(CENTER);
      image(hart, PosLivesX, PosLivesY, LiveUpdiameter, LiveUpdiameter);
      fill(255, 0, 0);

      if (dist(ballX, ballY, PosLivesX, PosLivesY) <= 50) { 
        PowerupHit = true;
        if (PowerupHit && allowLiveUp) {
          lives.playerlives += 1;
          PowerUpsPickedUp += 1;
          note.xPos = PosLivesX;
          note.yPos = PosLivesY;
          note.amount = 1;
          note.variable = "life";
          if (note.drawNote) {
            note.size = 25;
            note.opacity = 255;
          }
          note.drawNote = true;
          spawnPowerup = false;
          PowerupHit = false;
          allowLiveUp = false;
        }
      }
    }
  }
}
