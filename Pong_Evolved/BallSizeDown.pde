//written by ALtaaf Mangal IG101-B
class BallSizeDown {
  PImage BallSizeDown = loadImage("BallSizeDown.png");
  float PosBsizeDownX;  
  float PosBsizeDownY;
  float bSizeDownWidth = 75;
  float bSizeDownLength = 50;
  boolean bSizeDownHit = false;
  boolean allowBSizeDown = true;
  boolean spawnBSizeDown = false;
  float Sizedown = 20;
  float spawn = random(-5, 20);

  BallSizeDown() {
    if (currentGameState != 3) {
      PosBsizeDownX = random(284, 484);
      PosBsizeDownY = random (90, 324);
    }

    if (currentGameState == 3) {
      PosBsizeDownX = random(100, 630);
      PosBsizeDownY = random (150, 300);
    }
  } 

  void draw() {  
    imageMode(CENTER);

    if (currentGameState > 0) {

      spawnBSizeDown = true;
    } else {
      spawnBSizeDown = false;
      //bSizeDowndiameter = 50;
      allowBSizeDown = true;
      bSizeDownHit = false;
    }
    if (spawnBSizeDown == true & timeBar.remainingTime < (spawn * 125) / 30) {
      image(BallSizeDown, PosBsizeDownX, PosBsizeDownY, bSizeDownWidth, bSizeDownLength);
      fill(255, 0, 0);

      if (dist(ballX, ballY, PosBsizeDownX, PosBsizeDownY ) <= 50/2 + 50/2 ) {
        bSizeDownHit = true;

        if (bSizeDownHit == true && allowBSizeDown == true) {
          ballRadius = 6;
          PowerUpsPickedUp += 1;
          note.xPos = PosBsizeDownX;
          note.yPos = PosBsizeDownY;
          note.amount = -8;
          note.variable = "Ballsize";
          if (note.drawNote) {
            note.size = 25;
            note.opacity = 255;
          }
          note.drawNote = true;
          allowBSizeDown = false;
          bSizeDownWidth = 0;
          bSizeDownLength = 0;
          bSizeDownHit = false;
        }
      }
    }
  }
}
