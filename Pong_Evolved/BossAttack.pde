//Written bij Bora Oksal.

class Attack {
  PImage bossMines = loadImage("Obstacle.png");
  float bBallX, bBallY; //position of the first obstacle
  float bBallW, bBallH; //width & height of the first obstacle
  float bBall2X, bBall2Y; //position of the second
  float bBall2W, bBall2H; //width & height of the second obstacle
  float bBall1Speed, bBall2Speed;

  boolean isHit;

  int value = 0;

  Attack() 
  { 
    //Starting coördinates.
    bBallX = 150;
    bBallY = 70;
    bBallW = 30;
    bBallH = 30;

    bBall2X = 550;
    bBall2Y = 290;
    bBall2W = 30;
    bBall2H = 30;
  }

  void update()
  {
  }

  //Movement.
  void draw() 
  {
    noFill();
    noStroke();
    //obstacle 1
    rect(bBallX, bBallY, bBallW, bBallH);
    image(bossMines, bBallX, bBallY, bBallW+10, bBallH+10);

    //obstacle 2
    rect(bBall2X, bBall2Y, bBall2W, bBall2H);   
    image(bossMines, bBall2X, bBall2Y, bBall2W+10, bBall2H+10);
    bBallY += bBall1Speed;
    bBall2Y += bBall2Speed;
  }

  void attacked() {

    boolean bBallHit = circRect(ballX, ballY, ballRadius, bBallX, bBallY, bBallW, bBallH);
    boolean bBall2Hit = circRect(ballX, ballY, ballRadius, bBall2X, bBall2Y, bBall2W, bBall2H);

    if (bBallHit && hitX && !powershotInUse && !ballHit)
    {
      lives.playerlives -=1;
      LivesLost += 1;
      MinesHit += 1;
      ballX = width/2;
      ballY = height/2;
      screenShakeTimerHit = 0.5;
      note.xPos = bBallX;
      note.yPos = bBallY;
      note.amount = -1;
      note.variable = "life";
      if (note.drawNote) {
        note.size = 25;
        note.opacity = 255;
      }
      note.drawNote = true;
    } 
    else if (bBallHit && hitY && !powershotInUse && !ballHit)
    {
      lives.playerlives -=1;
      LivesLost += 1;
      MinesHit += 1;
      ballX = width/2;
      ballY = height/2;
      screenShakeTimerHit = 0.5;
      note.xPos = bBallX;
      note.yPos = bBallY;
      note.amount = -1;
      note.variable = "life";
      if (note.drawNote) {
        note.size = 25;
        note.opacity = 255;
      }
      note.drawNote = true;
    } 
    else if (bBall2Hit && hitX && !powershotInUse && !ballHit)
    {
      lives.playerlives -=1;
      LivesLost += 1;
      MinesHit += 1;
      ballX = width/2;
      ballY = height/2;
      screenShakeTimerHit = 0.5;
      note.xPos = bBall2X;
      note.yPos = bBall2Y;
      note.amount = -1;
      note.variable = "life";
      if (note.drawNote) {
        note.size = 25;
        note.opacity = 255;
      }
      note.drawNote = true;
    } 
    else if (bBall2Hit && hitY && !powershotInUse && !ballHit)
    {
      lives.playerlives -=1;
      LivesLost += 1;
      MinesHit += 1;
      ballX = width/2;
      ballY = height/2;
      screenShakeTimerHit = 0.5;
      note.xPos = bBall2X;
      note.yPos = bBall2Y;
      note.amount = -1;
      note.variable = "life";
      if (note.drawNote) {
        note.size = 25;
        note.opacity = 255;
      }
      note.drawNote = true;
    }
    
    if (bBallHit && hitX && powershotInUse) {
      screenShakeTimerHit = 0.5;
      bBallY = -100;
    } else if (bBallHit && hitY && powershotInUse) {
      screenShakeTimerHit = 0.5;
      bBallY = -100;
    } else if (bBall2Hit && hitX && powershotInUse) {
      screenShakeTimerHit = 0.5;
      bBall2Y = 532;
    } else if (bBall2Hit && hitY && powershotInUse) {
      screenShakeTimerHit = 0.5;
      bBall2Y = 532;
    }
    
    if (bBallY < 70){
      bBall1Speed = 1;
    }else bBall1Speed = 0;
    if (bBall2Y > 290){
      bBall2Speed = -1;
    }else bBall2Speed = 0;
  }
}
