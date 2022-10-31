//written by Altaaf Mangal IG101-B,
class LevelCounter {
  void level() {
    if (currentGameState > 0) {
      fill(#dcd5d5);
      textSize(25);
      if (currentGameState != 9) text("LEVEL " +  currentGameState, 70, 30);
      else text("GAME END", 70, 30);
    }
  }
}
