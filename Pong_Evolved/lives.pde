//written by ALtaaf Mangal IG101-B,
class Lives {

  int playerlives = 3;

  // constructor Lives
  Lives() {
  }

  void display() {
    textSize(30);
    fill(#dcd5d5);
    imageMode(CORNER);
    image(hart, 640, 10, 45, 45);
    text("X ", 700, 40);
    text(playerlives, 720, 40);
  }

  void loseLives() {

    if (ballX <= (0 + ballRadius)) {
      playerlives -= 1;
      LivesLost += 1;
    }

    if (ballX >= (width - ballRadius)) {
      playerlives -= 1;
      LivesLost += 1;
    }
    if (currentGameState == 3 || currentGameState == 6) {
      if (ballY >= height) {
        playerlives -=1;
        LivesLost += 1;
      }
    }
  }
}
