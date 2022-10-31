//Written by Finn Hoogerwerf, IG-101-B.
class LevelTimerBar {
  float barWidth = 125, barHeight = 15;
  float remainingTime = barWidth, loseTimeSpeed = barWidth * 0.1 / 180;
  //The calculation 'barWidth * 0.1 / 180' causes the maximum amount of time in the bar when it's filled to always be 30 seconds.
  
  void draw() {
    //Draw the timer bar.
    rectMode(CENTER);
    strokeWeight(3);
    fill(0);
    rect(width / 2, 80, barWidth, barHeight);
    rectMode(CORNER);
    stroke(255);
    fill(102, 161, 210);
    rect(width / 2 - barWidth / 2, 80 - barHeight / 2, remainingTime, barHeight);
    rectMode(CENTER);
    stroke(178, 82, 161);
    fill(0,0);
    rect(width / 2, 80, barWidth, barHeight);
    fill(255);
    textSize(15);
    text("TIME", width / 2, 85);
    
    //If it's not game over, the timer bar will decrease.
    remainingTime = constrain(remainingTime, 0, barWidth);
    if (lives.playerlives > 0) {
      remainingTime -= loseTimeSpeed;
    }
  }
}
