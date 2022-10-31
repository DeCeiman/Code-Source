//The level design is made and written by Ciarán Nijman
class Level_6
{
  //Load images
  PImage background = loadImage("vaporwave background.jpg");
  float fMeteorX = random(56, 720), fMeteorY = -500, fMeteorW = 40, fMeteorH = 40;
  float fMeteorSpeed = 2;
  PImage fMeteorite= loadImage("meteoriteflipped.png");
  void draw()
  {

    //draw the sixth background
    imageMode(CORNER);
    scrollSpeed = -1;
    image(background, -500, backgroundY6);
    backgroundY6 += scrollSpeed;

    //Draw Meteors
    fMeteorY += fMeteorSpeed;
    image(fMeteorite, fMeteorX, fMeteorY, fMeteorW, fMeteorH);
    if (fMeteorY > height)
    {
      fMeteorX = random(56, 720);
      fMeteorY = random(-100, -500);
    }
    if (fMeteorY <= -20)
    {
      textSize(40);
      fill(255, 0, 0);
      text("!", fMeteorX+20, 47);
    }
    //timer that trigger level transitions
    if (timeBar.remainingTime <= 0) {
      currentGameState += 1;
      ballHit = true;
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
      repositionPaddles = false;
      if (currentGameState != 6)
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
      ballX = mineX+ballRadius;
      ballY = random(60, 340);
      timeBar.remainingTime = timeBar.barWidth;
      screenShakeTimerTrans = 1;
    }
    //Reset powershot
    if (powershotInUse) {
      powershotInUse = false;
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

    //Reset background
    if (backgroundY6 <= -640) backgroundY6 = 0;


    //Draw objects
    border.draw();
    timeBar.draw();
    //Draw Paddles and Ball
    ball1.draw();
    paddle1.draw();
    paddle2.draw();
    paddle1.repositionPaddles();
    paddle2.repositionPaddles();
    //Play audio
    audio.playsong4();
    audio.stopsong3();
  }
}
