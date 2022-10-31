//The level design is made and written by Ciarán Nijman
class Level_7
{

  void draw()
  {
    //Draw the seventh background
    background7.draw();
    textOpacity -= textFade;

    //Draw middle line
    for (int y = 0; y < 432; y += 3)
    {
      stroke(#b252a1);
      strokeWeight(1);
      fill(#2c0452);
      rect(width/2 + 1 * sizeRect, sizeRect + y * sizeRect, sizeRect, sizeRect);
    }
    //Timer that triggers level transition
    if (timeBar.remainingTime <= 0) {
      currentGameState += 1;
      ballHit = true;
      //Reset Ball Position
      ballX = random(284, 484);
      ballY = height/2;
      timeBar.remainingTime = timeBar.barWidth;
      screenShakeTimerTrans = 1;
    }

    //Draw objects
    border.draw();
    timeBar.draw();
    //Play audio

    //Draw the meteors
    for (int i = 0; i < Meteorites.length; i++)
    {
      Meteorites[i].drawMeteorites();

      if (Meteorites[i].meteoriteY >= height) 
      {
        Meteorites[i].meteoriteY = random(-200, -50);
        Meteorites[i].meteoriteX = random(220, 540);
      }

      //Meteor ball collision
      boolean hitMeteorites = circRect(ballX, ballY, ballRadius, Meteorites[i].meteoriteX, Meteorites[i].meteoriteY, Meteorites[i].meteoriteW, Meteorites[i].meteoriteH);
      if (currentGameState == 7)
      {
        if (hitMeteorites) 
        {
          meteorHit = true;
          audio.Methit();
          note.xPos = Meteorites[i].meteoriteX;
          note.yPos = Meteorites[i].meteoriteY;
          note.amount = -1;
          note.variable = "life";
          if (note.drawNote) {
            note.size = 25;
            note.opacity = 255;
          }
          note.drawNote = true;
        }

        if (hitMeteorites && powershotInUse) 
        {
          MeteorsDestroyed += 1;
          note.xPos = Meteorites[i].meteoriteX;
          note.yPos = Meteorites[i].meteoriteY;
          note.amount = 30;
          note.variable = "points";
          if (note.drawNote) {
            note.size = 25;
            note.opacity = 255;
          }
          note.drawNote = true;
          Meteorites[i].meteoriteY = random(-200, -50);
          Meteorites[i].meteoriteX = random(220, 540);
          score.playerScore += 30;
        }
      }
    }
    //Draw paddles and ball
    ball1.draw();
    paddle1.draw();
    paddle2.draw();


    // spawn live powerup
    LiveUp l = liveup.get(5);
    if (l.spawnPowerup) l.displaypowerup();

    // spawn time powerup
    TimeUP t = timeup.get(3);
    if (t.spawnTimeUp)t.draw();
    
    //Ball size up power-up spawn
    BallSizeUp bup = ballup.get(4);
    if (!bup.bSizeUpHit)bup.draw();

    if (timeBar.remainingTime <= resetPowerUps) {
      ballRadius = 10;
    }
    //Ball size down power-up spawn
    BallSizeDown bdown = balldown.get(4);
    if (!bdown.bSizeDownHit)bdown.draw();
  }
}
//Meteorites written and designed by Ciarán Nijman, all references to class meteorites are written by Ciarán
class meteorites
{
  //Load images
  PImage meteorite= loadImage("meteoriteflipped.png");
  //Declare variables
  float meteoriteX, meteoriteY, meteoriteW, meteoriteH, meteoriteSpeed;
  //Meteorite constructor
  meteorites(float posX, float posY, float w, float h)
  {
    meteoriteX = posX;
    meteoriteY = posY;
    meteoriteW = w;
    meteoriteH = h;
    meteoriteSpeed = 1;
  }

  void drawMeteorites()
  {
    //Hint Text
    fill(255);
    textSize(25);
    text("HINT! USE POWERSHOT", width/2, 390);

    //Meteorite warning text
    textFade = 5;
    if (textOpacity <= 0 && timeBar.remainingTime > (20 * 125) / 30) textOpacity = 255;
    textSize(50);
    fill(255, 0, 0, textOpacity);
    text("WARNING", width/2, 200);
    text("METEORITES", width/2, 270);
    fill(255, 0);
    noStroke();


    if (timeBar.remainingTime < (20 * 125) / 30) 
    {
      textOpacity =0;
    }
    //Draw Meteorite
    image(meteorite, meteoriteX, meteoriteY, meteoriteW, meteoriteH);
    meteoriteY += meteoriteSpeed;
  }
}
