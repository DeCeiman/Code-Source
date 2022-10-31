//The level design is made and written by Ciarán Nijman
class Level_2
{
  //Load images
  PImage instructions = loadImage("arrowflipped.png");
  PImage crackedblock = loadImage("crack block.png");
  void draw()
  {
    //Draws the second background
    background2.draw();

    //Player instructions
    imageMode(CORNER);
    fill(255);
    textSize(20);
    text("POWER SHOT UNLOCKED", width / 2, 300);
    text("POWER SHOT DOES NOT GIVE POINTS!", width / 2, 400);
    textSize(15);
    fill(255);
    image(instructions, 50, 50, 130, 130);
    text("D = ON", 160, 90);
    text("A = OFF", 60, 90);
    image(instructions, 580, 50, 130, 130);
    text("LEFT = ON", 570, 90);
    text("RIGHT = OFF", 700, 90);

    //Draw 2 obstacles
    for (int y = 0; y < 10; y += 3)
    {
      rectMode(CORNER);
      stroke(#b252a1);
      strokeWeight(1);
      fill(#2c0452);
      rect(wallX + 0 * 50, wallY + y * 80, wallW, wallH);
    }
    //Draw 2 cracked blocks
    image(crackedblock, cWallX, cWallY, cWallW, cWallH);
    image(crackedblock, cWallX2, cWallY2, cWallW, cWallH);

    //Timer that triggers level transition
    if (timeBar.remainingTime <= 0) {
      //Reposition paddles to horizontal positions
      repositionPaddles = true;
      currentGameState += 1;
      ballHit = true;
      //Reset Ball Position
      ballX = width/2;
      ballY = height/2;
      timeBar.remainingTime = timeBar.barWidth;
      screenShakeTimerTrans = 1;
    }

    //Time-up power-up spawn
    TimeUP t = timeup.get(1);
    if (t.spawnTimeUp)t.draw();

    if (timeBar.remainingTime <= resetPowerUps) {
      ballRadius = 10;
    }

    //Paddle size down power-up spawn
    PaddleSizeUp pub = paddleup.get(1);
    if (!pub.paddleUpHit) pub.draw();

    //Paddle size down power-up spawn
    PaddleSizeDown pdown = paddledown.get(1);
    if (!pdown.paddleDownHit) pdown.draw();

    if (timeBar.remainingTime <= resetPowerUps) {
      paddle1.paddleLength = 50;
      paddle2.paddleLength = 50;
    }

    //Ball size down power-up spawn
    BallSizeDown bdown = balldown.get(2);
    if (!bdown.bSizeDownHit)bdown.draw();

    //Draw border
    border.draw();
    timeBar.draw();

    //Draw ball and paddle
    ball1.draw();
    paddle1.draw();
    paddle2.draw();
    paddle1.paddleX = constrain(paddle1.paddleX, paddle1.paddleWidth + 3, width / 2 - paddle1.paddleWidth - 10);
    paddle2.paddleX = constrain(paddle2.paddleX, width / 2 + paddle1.paddleWidth + 10, width - paddle1.paddleWidth - 3);
  }
} 
