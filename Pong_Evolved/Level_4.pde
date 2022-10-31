//The level design is made and written by Ciarán Nijman
class Level_4
{
  //load image
  PImage obstacle = loadImage("Obstacle.png");
  //initialise and declare variable
  float mineVY = 1;
  void draw()
  {
    //Draw the 4th background
    background4.draw();
    //player instructions
    fill(255);
    text("POWER SHOT DESTROYS MINES!", width/2, 250);

    //draw objects
    border.draw();
    timeBar.draw();
    //draw the paddles
    paddle1.draw();
    paddle2.draw();
    paddle1.paddleX = constrain(paddle1.paddleX, paddle1.paddleWidth + 3, width / 2 - paddle1.paddleWidth - 10);
    paddle2.paddleX = constrain(paddle2.paddleX, width / 2 + paddle1.paddleWidth + 10, width - paddle1.paddleWidth - 3);

    //Draw moving platform
    rectMode(CORNER);
    stroke(#b252a1);
    strokeWeight(1);
    fill(#2c0452);
    imageMode(CORNER);
    noFill();
    noStroke();
    rect(mineX, mineY, mineW, mineH);
    image(obstacle, mineX, mineY, mineW, mineH);

    // spawn live powerup
    LiveUp l = liveup.get(3);
    if (l.spawnPowerup) l.displaypowerup();

    // spawn time powerup
    TimeUP t = timeup.get(2);
    if (t.spawnTimeUp)t.draw();

    // spawn ball size poweru by Altaaf
    BallSizeUp bup = ballup.get(1);
    if (!bup.bSizeUpHit)bup.draw();

    if (timeBar.remainingTime <= resetPowerUps) {
      ballRadius = 10;
    }
    // spawn ball size powerdown
    BallSizeDown bdown = balldown.get(4);
    if (!bdown.bSizeDownHit)bdown.draw();

    //Draw Ball
    ball1.draw();

    //Collision with Border
    if (mineY + mineH >= borderY + borderH) mineVY *= -1;
    if (mineY <= 20) mineVY *= -1;
    
    
    //mine speed
    mineY += mineVY;
    
     if (Boom.isPlaying()){
          ps.addParticle5();
          ps.run5();
        }

    //Timer that triggers level transition
    if (timeBar.remainingTime <= 0) {
      currentGameState += 1;
      ballHit = true;
      //Reset Ball Position
      ballX = width/2;
      ballY = height/2;
      timeBar.remainingTime = timeBar.barWidth;
      screenShakeTimerTrans = 1;
    }
  }
}
