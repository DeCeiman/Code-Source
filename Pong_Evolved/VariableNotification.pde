class VariableNotification {
  float opacity = 255, size = 25, yPos, xPos;
  int amount;
  String variable;
  boolean reset = false, drawNote = false;

  void draw() {
    if (drawNote) {
      textSize(size);
      //If amount > 0, then draw a note that is colored green and moves up slightly.
      if (amount > 0) {
        fill(0, 255, 0, opacity);
        text("+" + amount + " " + variable, xPos, yPos);
        yPos -= 0.5;
      }
      
      //If amount < 0, then draw a note that is colored red and moves down slightly.
      if (amount < 0) {
        fill(255, 0, 0, opacity);
        text(amount + " " + variable, xPos, yPos);
        yPos += 0.5;
      }

      //Decrease opacity, increase text size.
      opacity -= 5;
      size += 0.1;


      //If opacity <= 0, then stop and get everything ready for next time.
      if (opacity <= 0) {
        reset = true;
      }

      if (reset) {
        opacity = 255;
        size = 25;
        drawNote = false;
        reset = false;
      }
    }
  }
}
