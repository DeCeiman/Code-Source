//written by ALtaaf Mangal IG101-B,
class StopWatchTimer {

  int startTime = 0, stopTime = 0;
  boolean running;
  boolean GameOver = false;

  void start() {
    if (GameOver) {
      running = false;
    }

    startTime = millis();
    running = true;
  }

  void stopthetimer() {
    if ((GameOver || currentGameState == 9) && running) {
      stopTime = millis();
      running = false;
    }
  }


  int getElapsedTime() {
    int elapsed;
    if (running) {
      elapsed = (millis() - startTime);
    }
    
    else {
      elapsed = (stopTime - startTime);
    }

    return elapsed;
  }

  int second() {
    return (getElapsedTime() / 1000) % 60;
  }

  int minute () {
    return (getElapsedTime()/(1000*60))% 60;
  }
}
