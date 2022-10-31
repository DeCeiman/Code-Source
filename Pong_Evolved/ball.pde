//Written by Finn Hoogerwerf, IG-101-B.
class ball {
  int ellipseStrokeR = 178, ellipseStrokeG = 82, ellipseStrokeB = 161;

  void draw() {

    //PVector for trails
    PVector PowershotLeft = new PVector(-0.1, 0);
    PVector PowershotRight = new PVector(0.1, 0);
    PVector PSgravity = new PVector(0,0.1);

    //If the ball is too far up and it is no longer visible, draw a small dot that follows the ball's X-coördinate to give the player an indication of where the ball is.
    if (currentGameState == 3 || currentGameState == 6) {
      if (!paused) moveBallY += gravity;
      if (ballY <= -ballRadius - 3) {
        strokeWeight(2);
        stroke(102, 161, 210);
        fill(44, 4, 82);
        ellipse(ballX, 20, 7, 7);
      }
    }

    //Drawing the ellipse of the ball.
    ellipseMode(CENTER);
    fill(44, 4, 82);
    stroke(ellipseStrokeR, ellipseStrokeG, ellipseStrokeB);
    strokeWeight(3);
    ellipse(ballX, ballY, ballRadius * 2, ballRadius * 2);

    //Drawing the lines inside the ball's ellipse.
    stroke(102, 161, 210);
    strokeWeight(2);
    line(ballX - ballRadius + 3, ballY, ballX + ballRadius - 3, ballY);
    line(ballX, ballY - ballRadius + 3, ballX, ballY + ballRadius - 3);

    //Move the ball with the moveBallX and moveBallY values.
    if (!paused) ballX += moveBallX;
    if (!paused) ballY += moveBallY;

    //Reset Speed.
    if (moveBallY >= 9) moveBallY = 9;
    if (moveBallY <= -9) moveBallY = -9;

    //Toggling the powershot on or off.
    if (currentGameState > 1 && currentGameState != 3 && currentGameState != 6) {
      if (keyPressed && (key == 'd' || key == 'D')) {
        powershotReadyP1 = true;
        paddle1.paddleStrokeR = 253;
        paddle1.paddleStrokeG = 237;
        paddle1.paddleStrokeB = 78;
      }

      if (keyPressed && (key == 'a' || key == 'A')) {
        powershotReadyP1 = false;
        paddle1.paddleStrokeR = 178;
        paddle1.paddleStrokeG = 82;
        paddle1.paddleStrokeB = 161;
      }

      if (keyPressed && keyCode == LEFT) {
        powershotReadyP2 = true;
        paddle2.paddleStrokeR = 253;
        paddle2.paddleStrokeG = 237;
        paddle2.paddleStrokeB = 78;
      }

      if (keyPressed && keyCode == RIGHT) {
        powershotReadyP2 = false;
        paddle2.paddleStrokeR = 178;
        paddle2.paddleStrokeG = 82;
        paddle2.paddleStrokeB = 161;
      }
    }

    //If the ball touches one of the paddles on the front side, then multiply moveBallX by -1, to mirror the movement direction in the X-axis. If the ball gets stuck inside of one of the paddles, move it back to the front of the paddle.
    if (currentGameState != 3 && currentGameState != 6) {
      if ((ballX <= paddle1.paddleX + (paddle1.paddleWidth + ballRadius + 3) && ballX >= paddle1.paddleX - (paddle1.paddleWidth + ballRadius + 3)) && (ballY >= paddle1.paddleY - (paddle1.paddleLength + ballRadius + 3) && ballY <= paddle1.paddleY + (paddle1.paddleLength + ballRadius + 3))) { 
        BallHits += 1; 
        if ((lastPaddleHit == 2 || lastPaddleHit == 0) && !powershotReadyP1) score.playerScore += 20;

        if (powershotInUse && !powershotReadyP1) {
          moveBallX /= 1.5;
          powershotInUse = false;
          ball1.ellipseStrokeR = 178;
          ball1.ellipseStrokeG = 82;
          ball1.ellipseStrokeB = 161;
        }

        if (powershotReadyP1 && !powershotInUse) {
          moveBallX *= 1.5;
          powerShotUsed +=1;
          powershotInUse = true;
          powershotReadyP1 = false;
          audio.Powershot();
          ps.addParticle2();
          ps.run2();
          ps.applyForce2(PowershotLeft);
          ball1.ellipseStrokeR = 253;
          ball1.ellipseStrokeG = 237;
          ball1.ellipseStrokeB = 78;
          paddle1.paddleStrokeR = 178;
          paddle1.paddleStrokeG = 82;
          paddle1.paddleStrokeB = 161;
          screenShakeTimerHit = 0.1;
        }

        if (powershotReadyP1 && powershotInUse) {
          powerShotUsed +=1;
          powershotReadyP1 = false;
          paddle1.paddleStrokeR = 178;
          paddle1.paddleStrokeG = 82;
          paddle1.paddleStrokeB = 161;
          screenShakeTimerHit = 0.1;
        }

        if (ballY < paddle1.paddleY) moveBallY = (paddle1.paddleY - ballY) / 17.5;
        if (ballY > paddle1.paddleY) moveBallY = (paddle1.paddleY - ballY) / 17.5;

        moveBallX *= -1;

        ballX = paddle1.paddleX + (paddle1.paddleWidth + ballRadius + 3);

        lastPaddleHit = 1;
        ballHit = false;
      }

      if ((ballX >= paddle2.paddleX - (paddle2.paddleWidth + ballRadius + 3) && ballX <= paddle2.paddleX + (paddle2.paddleWidth + ballRadius + 3)) && (ballY >= paddle2.paddleY - (paddle2.paddleLength + ballRadius + 3) && ballY <= paddle2.paddleY + (paddle2.paddleLength + ballRadius + 3))) { 
        BallHits +=1;
        if ((lastPaddleHit == 1 || lastPaddleHit == 0) && !powershotReadyP2) score.playerScore += 20;

        if (powershotInUse && !powershotReadyP2) {
          moveBallX /= 1.5;
          powershotInUse = false;
          ball1.ellipseStrokeR = 178;
          ball1.ellipseStrokeG = 82;
          ball1.ellipseStrokeB = 161;
        }

        if (powershotReadyP2 && !powershotInUse) {
          moveBallX *= 1.5;
          powerShotUsed += 1;
          powershotInUse = true;
          powershotReadyP2 = false;
          audio.Powershot();
          ps.addParticle3();
          ps.run3();
          ps.applyForce3(PowershotRight);
          ball1.ellipseStrokeR = 253;
          ball1.ellipseStrokeG = 237;
          ball1.ellipseStrokeB = 78;
          paddle2.paddleStrokeR = 178;
          paddle2.paddleStrokeG = 82;
          paddle2.paddleStrokeB = 161;
          screenShakeTimerHit = 0.1;
        }

        if (powershotReadyP2 && powershotInUse) {
          powershotReadyP2 = false;
          powerShotUsed +=1;
          paddle2.paddleStrokeR = 178;
          paddle2.paddleStrokeG = 82;
          paddle2.paddleStrokeB = 161;
          screenShakeTimerHit = 0.1;
        }

        if (ballY < paddle2.paddleY) moveBallY = (paddle2.paddleY - ballY) / 15;
        if (ballY > paddle2.paddleY) moveBallY = (paddle2.paddleY - ballY) / 15;

        moveBallX *= -1;   

        ballX = paddle2.paddleX - (paddle2.paddleWidth + ballRadius + 3);

        lastPaddleHit = 2;
        ballHit = false;
      }
    }


    if (currentGameState == 3 || currentGameState == 6) {
      //Collision between ball and paddle.
      if ((ballY >= paddle1.paddleY - (paddle1.paddleLength + ballRadius + 3) && ballY <= paddle1.paddleY + (paddle1.paddleLength + ballRadius + 3)) && (ballX <= paddle1.paddleX + (paddle1.paddleWidth + ballRadius + 3) && ballX >= paddle1.paddleX - (paddle1.paddleWidth + ballRadius + 3))) { 
        BallHits += 1; 
        if (moveBallX < 0) moveBallX *= -1; 

        gravity = random(0.15, 0.25);
        moveBallY = -9;
        ballY = paddle1.paddleY - (paddle1.paddleLength + ballRadius + 3);

        if (lastPaddleHit == 2 || lastPaddleHit == 0) score.playerScore += 20;
        lastPaddleHit = 1;
      }  

      if ((ballY >= paddle2.paddleY - (paddle2.paddleLength + ballRadius + 3) && ballY <= paddle2.paddleY + (paddle2.paddleLength + ballRadius + 3)) && (ballX <= paddle2.paddleX + (paddle2.paddleWidth + ballRadius + 3) && ballX >= paddle2.paddleX - (paddle2.paddleWidth + ballRadius + 3))) { 
        BallHits += 1;
        if (moveBallX > 0) moveBallX *= -1;

        gravity = random(0.15, 0.25);
        moveBallY = -9;
        ballY = paddle2.paddleY - (paddle2.paddleLength + ballRadius + 3);

        if (lastPaddleHit == 1 || lastPaddleHit == 0) score.playerScore += 20;
        lastPaddleHit = 2;
      }
    }

    //Written by Ciarán Nijman.
    //Collision Borders
    //Collision Border Y
    if (currentGameState != 3 && currentGameState != 6) {
      if (ballY + ballRadius <= 50 && moveBallY < 0) moveBallY *= -1;
      if (ballY + ballRadius >= 394 && moveBallY > 0) moveBallY *= -1;
    }

    //If the ball touches the lower border, then moveBallY = -9.
    if (currentGameState == 3 || currentGameState == 6) {
      if (ballY >= height) moveBallY = -9;
    }

    //Collision Border X
    if (currentGameState == 3 || currentGameState == 6) {
      if (ballX + ballRadius <= 54 && moveBallX < 0) moveBallX *= -1;
      if (ballX + ballRadius >= 714 && moveBallX > 0) moveBallX *= -1;
    }

    //Collision Obstacles
    //Walls Level 2
    boolean hitWall1 = circRect(ballX, ballY, ballRadius, wallX, wallY, wallW, wallH);
    if (currentGameState == 2)
    {
      if (hitWall1) 
      {
        if (hitX) moveBallX *= -1;
        if (hitY) moveBallY *= -1;
      }
    }
    boolean hitCWall1 = circRect(ballX, ballY, ballRadius, cWallX, cWallY, cWallW, cWallH);
    if (currentGameState == 2)
    {
      if (hitCWall1 && !powershotInUse) 
      {
        if (hitX) moveBallX *= -1;
        if (hitY) moveBallY *= -1;
      }
      if (hitCWall1 && powershotInUse) 
      {
        OtherDestroyed += 1;
        cWallX = -500;
        cWallY = -1000;
        screenShakeTimerHit = 0.2;
      }
    }
    boolean hitCWall2 = circRect(ballX, ballY, ballRadius, cWallX2, cWallY2, cWallW, cWallH);
    if (currentGameState == 2)
    {
      if (hitCWall2 && !powershotInUse) 
      {
        if (hitX) moveBallX *= -1;
        if (hitY) moveBallY *= -1;
      }
      if (hitCWall2 && powershotInUse) 
      {
        OtherDestroyed += 1;
        cWallX2 = -500;
        cWallY2 = -1000;
        screenShakeTimerHit = 0.2;
      }
    }

    boolean hitWall2 = circRect(ballX, ballY, ballRadius, wallX, wallY + 240, wallW, wallH);
    if (currentGameState == 2)
    {
      if (hitWall2) 
      {
        if (hitX) moveBallX *= -1;
        if (hitY) moveBallY *= -1;
      }
    }

    //Platform Level 4
    boolean hitMovingPlatform = circRect(ballX, ballY, ballRadius, mineX, mineY, mineW, mineH);
    if (currentGameState == 4)
    {
      if (hitMovingPlatform && !powershotInUse && !ballHit) 
      {
        if (hitX || hitY)  
        {
          note.xPos = mineX;
          note.yPos = mineY;
          note.amount = -1;
          note.variable = "life";
          note.drawNote = true;
          ballHit = true;
          mineHit = true;
        }
      } else mineHit = false;

      if (hitMovingPlatform && powershotInUse && !ballHit)
      {
        mineX = -1000;
        mineY = -1000;
        MinesDestroyed += 1;
      }
      if (mineHit)
      {
        MinesHit += 1;
        if (score.playerScore > 0) score.playerScore -= 50;
        if (lastPaddleHit == 1) ballX = ballSpawnX1;
        if (lastPaddleHit == 2) ballX = ballSpawnX2;
        ballY = height / 2;
        mineHit = false;
        if (lives.playerlives > 0) lives.playerlives -=1;
        LivesLost += 1;
        screenShakeTimerHit = 0.2;
      }
    }
    //Boss Level 5
    boolean BossHit = circRect(ballX, ballY, ballRadius, theBoss.bossX, theBoss.bossY, theBoss.w, theBoss.h);
    if (currentGameState == 5)
    {
      if (BossHit && !ballHit)
      {
        if (hitX)
        {
          bossHealth.health();
          screenShakeTimerHit = 0.5;
          ballHit = true;
          ps.addParticle4();
          ps.run4();
          ps.applyForce4(PSgravity);
          audio.Ow();
        }

        if (hitY)
        {

          bossHealth.health();
          screenShakeTimerHit = .5;
          ballHit = true;
          ps.addParticle4();
          ps.run4();
          ps.applyForce4(PSgravity);
          audio.Ow();
        }
      }
    }

    //Meteors Level 6
    boolean hitMeteorites = circRect(ballX, ballY, ballRadius, level6.fMeteorX, level6.fMeteorY, level6.fMeteorW, level6.fMeteorH );
    if (currentGameState == 6)
    {
      if (hitMeteorites) 
      {
        score.playerScore -= 30;
        if (lives.playerlives > 0) lives.playerlives -=1;
        LivesLost += 1;
        ballX = width / 2;
        ballY = ballSpawnY;
        moveBallY = -4;
        screenShakeTimerHit = 0.2;
        audio.Methit();
        note.xPos = level6.fMeteorX;
        note.yPos = level6.fMeteorY;
        note.amount = -1;
        note.variable = "life";
        if (note.drawNote) {
          note.size = 25;
          note.opacity = 255;
        }
        note.drawNote = true;
      }
    }

    //Boss Level 8
    boolean Boss2Hit = circRect(ballX, ballY, ballRadius, theBoss2.boss2X, theBoss2.boss2Y, theBoss2.w, theBoss2.h);
    if (currentGameState == 8)
    {
      if (Boss2Hit && !ballHit)
      {
        if (hitX)
        {
          boss2Health.health();
          screenShakeTimerHit = 0.5;
          ballHit = true;
          ps.addParticle4();
          ps.run4();
          ps.applyForce4(PSgravity);
          audio.Ow();
        }

        if (hitY)
        {

          boss2Health.health();
          screenShakeTimerHit = .5;
          ballHit = true;
          ps.addParticle4();
          ps.run4();
          ps.applyForce4(PSgravity);
          audio.Ow();
        }
      }
    }


    if (hitWall1) {
      println("HITWALL1");
      //audio.hit();
      ps.addParticle1();
      ps.run1();
      ps.applyForce1(PSgravity);
    }

    if (hitWall2) {
      println("HITWALL2");
      //audio.hit();
     ps.addParticle1();
     ps.run1();
     ps.applyForce1(PSgravity);
    }

    if (hitCWall1) {
      println("HITCWALL1");
      //audio.hit();
    }

    if (hitCWall2) {
      println("HITCWALL2");
      //audio.hit();
    }
  }
}
