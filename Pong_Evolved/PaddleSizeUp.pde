//written by ALtaaf Mangal IG101-B,
class PaddleSizeUp {
  PImage PaddleSizeUpSymbol = loadImage("paddleSizeUp.png");
  float PospaddleUpX;  
  float PospaddleUpY;
  float paddleSizeUpWidth = 140;
  float paddleSizeUpLength = 120;

  boolean paddleUpHit = false;
  boolean allowPaddleSizeUp = true;
  boolean spawnPaddleSizeUp = true;
  float spawn = random(-5, 15);

  {
    if (currentGameState != 3) {
      PospaddleUpX = random(284, 484);
      PospaddleUpY = random (90, 324);
    }

    if (currentGameState == 3) {
      PospaddleUpX = random(100, 630);
      PospaddleUpY = random (150, 300);
    }
  }

  void draw() {
    if (currentGameState > 0) {
      spawnPaddleSizeUp = true;
    } else {
      spawnPaddleSizeUp = false;
      allowPaddleSizeUp = true;
      paddleUpHit = false;
    }
    if (spawnPaddleSizeUp == true & timeBar.remainingTime < (spawn * 125) / 30) {
      imageMode(CENTER);
      image(PaddleSizeUpSymbol, PospaddleUpX, PospaddleUpY, paddleSizeUpWidth, paddleSizeUpLength);
      fill(255, 0, 0);

      if (dist(ballX, ballY, PospaddleUpX, PospaddleUpY) <= 50) { 
        paddleUpHit = true;
        if (paddleUpHit && allowPaddleSizeUp) {
          paddle1.paddleLength = 65;
          paddle2.paddleLength = 65;
          PowerUpsPickedUp += 1;
          note.xPos = PospaddleUpX;
          note.yPos = PospaddleUpY;
          note.amount = +15;
          note.variable = "Paddlesize";
          if (note.drawNote) {
            note.size = 25;
            note.opacity = 255;
          }
          note.drawNote = true;
          spawnPaddleSizeUp = false;
          paddleUpHit = false;
          allowPaddleSizeUp = false;
        }
      }
    }
  }
}
