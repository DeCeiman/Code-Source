//The level design is made and written by Ciarán Nijman
class Level_8
{
  void draw()
  {
    //Draw the eigth background
    background8.draw();
    //written by Ciarán Nijman
    //Draw the middle line
    for (int y = 0; y < 432; y += 3)
    {
      stroke(#b252a1);
      strokeWeight(1);
      fill(#2c0452);
      rect(width/2 + 1 * sizeRect, sizeRect + y * sizeRect, sizeRect, sizeRect);

      //Boss health triggers level transition
      if (boss2Health.health2 <= 0) {
        currentGameState = 9;
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
    }

    //Draw the border
    border.draw();

    //Draw paddles and ball
    ball1.draw();
    paddle1.draw();
    paddle2.draw();

    //Boss 2
    updateGame(); // Update your game first
    theBoss2.draw();
    boss2Health.draw();
    boss2Attack.draw();
    //Update game boss 2
  }

  void updateGame() {
    theBoss2.update();
    boss2Health.update();
    boss2Attack.update();
  }
}
