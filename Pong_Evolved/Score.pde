//written by ALtaaf Mangal IG101-B,
class Score {
  int playerScore;

  void score() {
    if (currentGameState > 0) {
      fill(255);
      text("Score: " + playerScore, width / 2, 60 );
    }
  }

  void loseScore() {
    if (ballX > width - ballRadius || ballX < ballRadius) {
      if (score.playerScore < 50) score.playerScore = 0;
      else score.playerScore -= 50;
      if (lastPaddleHit == 0) ballX = random(ballSpawnX1, ballSpawnX2);
      if (lastPaddleHit == 1) ballX = ballSpawnX1;
      if (lastPaddleHit == 2) ballX = ballSpawnX2;
      if (powershotInUse) {
        moveBallX /= 1.5;
        powershotInUse = false;
        ball1.ellipseStrokeR = 178;
        ball1.ellipseStrokeG = 82;
        ball1.ellipseStrokeB = 161;
      }
    }

    if (currentGameState == 3 && ballY >= height) {
      if (score.playerScore < 50) score.playerScore = 0;
      else score.playerScore -= 50;

      ballX = width / 2;
      ballY = ballSpawnY;
    }

    if (currentGameState == 4 && (ballX > width - ballRadius || ballX < ballRadius)) {
      if (score.playerScore < 50) score.playerScore = 0;
      else score.playerScore -= 50;

      if (lastPaddleHit == 1) ballX = ballSpawnX1;
      if (lastPaddleHit == 2) ballX = ballSpawnX2;
      ballY = height / 2;
    }

    if (currentGameState == 6 && ballY >= height) {
      if (score.playerScore < 50) score.playerScore = 0;
      else score.playerScore -= 50;

      ballX = width / 2;
      ballY = ballSpawnY;
    }

    if (currentGameState == 7) {
      if (meteorHit && !powershotInUse && !ballHit) {
        if (score.playerScore < 50) score.playerScore = 0;
        else score.playerScore -= 50;

        if (lastPaddleHit == 1) ballX = ballSpawnX1;
        if (lastPaddleHit == 2) ballX = ballSpawnX2;
        ballY = height / 2;
        lives.playerlives -= 1;
        LivesLost += 1;
        MeteorsHit += 1;
        meteorHit = false;
        screenShakeTimerHit = 0.2;
        ballHit = true;
      } else meteorHit = false;
    }

    if (playerScore <= 0) playerScore = 0;
  }
}
