//Written by Finn Hoogerwerf, IG-101-B.
class paddles {
  float paddleX, paddleY, paddleWidth, paddleLength;
  int paddleStrokeR = 178, paddleStrokeG = 82, paddleStrokeB = 161;

  void draw() {
    //Draw the rectangle of the paddles.
    rectMode(CENTER);
    fill(44, 4, 82);
    stroke(paddleStrokeR, paddleStrokeG, paddleStrokeB);
    strokeWeight(3);
    rect(paddleX, paddleY, paddleWidth * 2, paddleLength * 2);

    //Draw the lines inside the paddle's rectangle.
    stroke(102, 161, 210);
    strokeWeight(2);
    line(paddleX + paddleWidth - 3, paddleY, paddleX - paddleWidth + 3, paddleY);
    line(paddleX, paddleY - paddleLength + 3, paddleX, paddleY + paddleLength - 3);

    //Constrain the paddle so that it cannot move outside of the window.
    if (currentGameState != 3 && currentGameState != 6) paddleY = constrain(paddleY, borderY+borderStroke+paddleLength, borderH - paddleLength);
    else {
      paddle1.paddleX = constrain(paddle1.paddleX, borderX+borderStroke+paddleWidth, width / 2 - paddle1.paddleWidth - 10);
      paddle2.paddleX = constrain(paddle2.paddleX, width / 2 + paddle1.paddleWidth + 10, borderW - paddleWidth);
      paddleY = constrain(paddleY, 150, 394 - paddleLength);
    }
  }
  
  void repositionPaddles() {
    //Reposition the paddles to get them ready for gravity levels.
    if (repositionPaddles == true) {
      paddle1.paddleX = 200;
      paddle1.paddleY = 332;
      paddle1.paddleWidth = 50;
      paddle1.paddleLength = 8;
      paddle2.paddleX = 578;
      paddle2.paddleY = 332;
      paddle2.paddleWidth = 50;
      paddle2.paddleLength = 8;
      repositionPaddles = false;
    }
  }
}
