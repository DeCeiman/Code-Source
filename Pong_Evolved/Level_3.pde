//The level design is made and written by Ciarán Nijman
class Level_3
{
  //Load images
  PImage background = loadImage("vaporwave background.jpg");
  float backgroundX = -500;
  PImage instructions = loadImage("arrowflipped.png");
  PImage instructions2 = loadImage("arrow.png");
  void draw()
  {
    //draws the third background
    imageMode(CORNER);
    scrollSpeed = 1;
    image(background, backgroundX, backgroundY);

    backgroundY += scrollSpeed;
    //Player instructions
    image(instructions, 290, 300);
    text("A   &   D", 200, 400);
    text("LEFT & RIGHT", 600, 400);
    image(instructions2, -10, 100);
    image(instructions2, 570, 100);
    text("W", 150, 180);
    text("S", 150, 260);
    text("UP", 580, 180);
    text("DOWN", 580, 260);

    //Timer that triggers level transition
    if (timeBar.remainingTime <= 0) {
      currentGameState += 1;
      ballHit = true;
      textOpacity = 255;
      //Reset Speed
      if (moveBallX > 0 && moveBallY > 0)
      {
        moveBallX = 4;
        moveBallY = 4;
      }
      if (moveBallX < 0 && moveBallY < 0)
      {
        moveBallX = -4;
        moveBallY = -4;
      }
      //Reset paddles to vertical postitions
      repositionPaddles = false;
      if (currentGameState != 3 && currentGameState != 6)
      {
        paddle1.paddleX = 70;
        paddle1.paddleY = 216;
        paddle1.paddleWidth = 8;
        paddle1.paddleLength = 50;
        paddle2.paddleX = 678;
        paddle2.paddleY = 216;
        paddle2.paddleWidth = 8;
        paddle2.paddleLength = 50;
      }
      //Reset Ball Position
      if (lastPaddleHit == 1) 
      {
        ballX = ballSpawnX1;
        moveBallX = 4;
        moveBallY = -4;
      }
      if (lastPaddleHit == 2)
      {
        ballX = ballSpawnX2;
        moveBallX = -4;
        moveBallY = 4;
      }
      ballY = height/2;
      timeBar.remainingTime = timeBar.barWidth;
      screenShakeTimerTrans = 1;
    }
    //Reset background
    if (backgroundY >= 16)
    {
      backgroundY = -640;
    }

    //Deactivate Powershot
    if (powershotInUse) {
      powershotInUse = false;
      moveBallX /= 1.5;
      ball1.ellipseStrokeR = 178;
      ball1.ellipseStrokeG = 82;
      ball1.ellipseStrokeB = 161;
    }

    if (powershotReadyP1) {
      powershotReadyP1 = false;
      paddle1.paddleStrokeR = 178;
      paddle1.paddleStrokeG = 82;
      paddle1.paddleStrokeB = 161;
    }

    if (powershotReadyP2) {
      powershotReadyP2 = false;
      paddle2.paddleStrokeR = 178;
      paddle2.paddleStrokeG = 82;
      paddle2.paddleStrokeB = 161;
    }

    //Live-up power-up spawn
    LiveUp l = liveup.get(2);
    if (l.spawnPowerup) l.displaypowerup();

    //Ballsize-up power-up spawn
    BallSizeUp bup = ballup.get(1);
    if (!bup.bSizeUpHit)bup.draw();

    if (timeBar.remainingTime <= resetPowerUps) {
      ballRadius = 10;
    }
    //Ballsize-down power-up spawn
    BallSizeDown bdown = balldown.get(3);
    if (!bdown.bSizeDownHit)bdown.draw();

    //Draw objects
    border.draw();
    timeBar.draw();
    //Draw paddles and ball
    ball1.draw();
    paddle1.draw();
    paddle2.draw();
    //Reposition the paddles
    paddle1.repositionPaddles();
    paddle2.repositionPaddles();
    //play songs
    audio.playsong3();
    audio.stopsong1();
  }
}
