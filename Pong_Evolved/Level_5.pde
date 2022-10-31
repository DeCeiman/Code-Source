//The level design is made and written by Ciarán Nijman
class Level_5
{

  void draw()
  {
    //Draw the fifth background
    background5.draw();
    //Draw border
    border.draw();
    //Draw paddles
    paddle1.draw();
    paddle2.draw();
    paddle1.paddleX = constrain(paddle1.paddleX, paddle1.paddleWidth + 3, width / 2 - paddle1.paddleWidth - 10);
    paddle2.paddleX = constrain(paddle2.paddleX, width / 2 + paddle1.paddleWidth + 10, width - paddle1.paddleWidth - 3);

    //Boss 1
    updateGame(); // Update your game first
    theBoss.draw();
    bossHealth.draw();
    bossAttack.draw();
    bossAttack.attacked();
    //Draw Ball
    ball1.draw();

    //Boss health triggers level transition
    if (bossHealth.health <= 0) {
      currentGameState += 1;
      ballHit = true;
      repositionPaddles = true;
      //Reset Ball Position
      ballX = width/2;
      ballY = height/2;
      if (moveBallX > 0) moveBallX = 4;
      else moveBallX = -4;
      moveBallY = -4;
      screenShakeTimerTrans = 1;
      textOpacity = 255;
    }
    
     //Live power-up spawn
    if (bossHealth.health <= bossHealth.MAX_HEALTH /2) {
      LiveUp l = liveup.get(4);
      if (l.spawnPowerup) l.displaypowerup();
    }
  }
  //Boss update game
  void updateGame() {
    theBoss.update();
    bossHealth.update();
    bossAttack.update();
  }
}
