//written by ALtaaf Mangal IG101-B,
class PaddleSizeDown {
  PImage PaddleSizeDownSymbol = loadImage("paddleSizeDown.png");
  float PospaddleDownX;  
  float PospaddleDownY;
  float paddleSizeDownWidth = 140;
  float paddleSizeDownLength = 120;
  boolean paddleDownHit = false;
  boolean allowPaddleSizeDown = true;
  boolean spawnPaddleSizeDown = true;
  float spawn = random(-5, 15);

  {
    if (currentGameState != 3) {
      PospaddleDownX = random(284, 484);
      PospaddleDownY = random (90, 324);
    }

    if (currentGameState == 3) {
      PospaddleDownX = random(100, 630);
      PospaddleDownY = random (150, 300);
    }
  }

  void draw() {
    if (currentGameState > 0) {
      spawnPaddleSizeDown = true;
    } else {
      spawnPaddleSizeDown = false;
      allowPaddleSizeDown = true;
      paddleDownHit = false;
    }
    if (spawnPaddleSizeDown == true & timeBar.remainingTime < (spawn * 125) / 30) {
      imageMode(CENTER);
      image(PaddleSizeDownSymbol, PospaddleDownX, PospaddleDownY, paddleSizeDownWidth, paddleSizeDownLength);
      fill(255, 0, 0);

      if (dist(ballX, ballY, PospaddleDownX, PospaddleDownY) <= 50) { 
        paddleDownHit = true;
        if (paddleDownHit && allowPaddleSizeDown) {
          paddle1.paddleLength = 40;
          paddle2.paddleLength = 40;
          PowerUpsPickedUp += 1;
          note.xPos = PospaddleDownX;
          note.yPos = PospaddleDownY;
          note.amount = -10;
          note.variable = "padllesize";
          if (note.drawNote) {
            note.size = 25;
            note.opacity = 255;
          }
          note.drawNote = true;
          spawnPaddleSizeDown = false;
          paddleDownHit = false;
          allowPaddleSizeDown = false;
        }
      }
    }
  }
}
