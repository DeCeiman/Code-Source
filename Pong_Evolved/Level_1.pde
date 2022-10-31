//The level design is made and written by Ciarán Nijman
class Level_1
{
  //Load image
  PImage instructions = loadImage("arrow.png");
  void draw()
  {
    //Draw the first background
    background2.draw();
    //Player instructions
    imageMode(CENTER);
    textSize(30);
    fill(255);
    image(instructions, 120, height/2);
    image(instructions, 630, height/2);
    text("W", 160, 180);
    text("S", 160, 260);
    text("UP", 580, 180);
    text("DOWN", 580, 260);
    
    //Middle line
    for (int y = 0; y < 432; y += 3)
    {
      stroke(#b252a1); //MiddlelineStroke
      strokeWeight(1);
      fill(#2c0452); //Middleline
      rect(width/2 + 1 * sizeRect, sizeRect + y * sizeRect, sizeRect, sizeRect);
    }
    
    //Timer that triggers level transition
    if (timeBar.remainingTime <= 0) {
      currentGameState += 1;
      if (lastPaddleHit == 1) ballX = ballSpawnX1;
      if (lastPaddleHit == 2) ballX = ballSpawnX2;
      timeBar.remainingTime = timeBar.barWidth;
      screenShakeTimerTrans = 1;
    }

    //Live-up power-up spawn
    LiveUp l = liveup.get(0);
    if (l.spawnPowerup) l.displaypowerup();

    //Ball size up power-up spawn
    BallSizeUp bup = ballup.get(0);
    if (!bup.bSizeUpHit)bup.draw();

    if (timeBar.remainingTime <= resetPowerUps) {
      ballRadius = 10;
    }
    //Ball size down power-up spawn
    BallSizeDown bdown = balldown.get(1);
    if (!bdown.bSizeDownHit)bdown.draw();

    //Paddle size down power-up spawn
    PaddleSizeUp pub = paddleup.get(0);
    if (!pub.paddleUpHit) pub.draw();
    
    //Paddle size down power-up spawn
    PaddleSizeDown pdown = paddledown.get(0);
    if (!pdown.paddleDownHit) pdown.draw();

    if (timeBar.remainingTime <= resetPowerUps) {
      paddle1.paddleLength = 50;
      paddle2.paddleLength = 50;
    }

    //Draw Border
    border.draw();
    //Timer Draw
    timeBar.draw();
    //Ball and Paddle Draw 
    ball1.draw();
    paddle1.draw();
    paddle2.draw();
    //Play and stop song
    audio.playsong1();
    audio.stopsong2();
  }
}
