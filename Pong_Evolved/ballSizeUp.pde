//written by ALtaaf Mangal IG101-B
class BallSizeUp {
  PImage BallSizeUp = loadImage("BallSizeUp.png");
  float PosBsizeUpX;  
  float PosBsizeUpY;
  float bSizeUpWidth = 75;
  float bSizeUpLength = 50;
  boolean bSizeUpHit = false;
  boolean allowBSizeUp = true;
  boolean spawnBSizeUp = false;
  float spawn = random(-5, 20);
  BallSizeUp() {
    if (currentGameState != 3) {
      PosBsizeUpX = random(284, 484);
      PosBsizeUpY = random (90, 324);
    }

    if (currentGameState == 3) {
      PosBsizeUpX = random(100, 630);
      PosBsizeUpY = random (150, 300);
    }
  }

  void draw() {  
    imageMode(CENTER);

    if (currentGameState > 0) {

      spawnBSizeUp = true;
    } else {
      spawnBSizeUp = false;
      allowBSizeUp = true;
      bSizeUpHit = false;
    }
    if (spawnBSizeUp == true & timeBar.remainingTime < (spawn * 125) / 30) {
      image(BallSizeUp, PosBsizeUpX, PosBsizeUpY, bSizeUpWidth, bSizeUpLength);
      fill(255, 0, 0);

      if (dist(ballX, ballY, PosBsizeUpX, PosBsizeUpY ) <=50/2 + 50/2 ) {
        bSizeUpHit = true;
        if (bSizeUpHit == true && allowBSizeUp == true) {
          ballRadius = 15;
          PowerUpsPickedUp += 1;
          note.xPos = PosBsizeUpX;
          note.yPos = PosBsizeUpY;
          note.amount = 10;
          note.variable = "Ballsize";
          if (note.drawNote) {
            note.size = 25;
            note.opacity = 255;
          }
          note.drawNote = true;
          allowBSizeUp = false;
          bSizeUpWidth = 0;
          bSizeUpLength = 0;
          bSizeUpHit = false;
        }
      }
    }
  }
}
