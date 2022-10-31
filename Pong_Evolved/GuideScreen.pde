//written by Altaaf Mangal IG-101-B;

class GuideScreen {
  PImage TimeUP = loadImage("TimePowerUP.png");
  PImage PaddleSizeUpSymbol = loadImage("paddleSizeUp.png");
  PImage PaddleSizeDownSymbol = loadImage("paddleSizeDown.png");
  PImage BallSizeUp = loadImage("BallSizeUp.png");
  PImage BallSizeDown = loadImage("BallSizeDown.png");
  PImage arrow = loadImage("arrowfull.png");

  //Displaying the Guide Screen base.
  void displayGuide() {
    fill(0);
    rect(width / 2, height / 2, width - 50, height - 50);

    fill(255);
    textSize(40);
    text("Guide:", width / 2, 80);

    textSize(20);
    text("How to play:", 150, height / 2 - 70);
    text("Your goals:", 150, height / 2 + 50);

    fill(255, 0, 0);
    text("- Don't miss the ball!", width / 2, height / 2 - 50);
    text("- Score points by passing the ball to your teammate.", width / 2, height / 2 - 20);
    text("- Try to catch powerups to gain an advantage.", width / 2, height / 2 +10);
    text("- Get as much score as you can before level time runs out.", width / 2, height / 2 + 70);

    fill(#05DCFF);
    text("Press RIGHT to see controls...", width - 210, height - 30);
    textSize(15);
    fill(#05DCFF);
    text("Press SPACE to go back to main menu...", 200, 40);
  }

  //Displaying the contols guide.
  void controlsGuide() {
    fill(0);
    rect(width / 2, height / 2, width - 50, height - 50);

    fill(255);
    textSize(40);
    text("Controls:", width / 2, 80);

    textSize(20);
    //  text("controls and keybinds:", 150, 120);

    //Player 1 controls.
    fill(255, 0, 0);
    fill(#05DCFF);
    /*    text("Player 1:", 100, 120);
     text("Player 2:", 100, 250); */
    textSize(15);
    fill(255);
    fill(#05DCFF);
    text("CONTROLS PLAYER 1", 170, 120);
    fill(255);
    text("W", 170, 150);
    text("S", 170, 250);
    text("A", 120, 200);
    text("D", 220, 200);
    image(arrow, 170, 200, 80, 80);
  //  fill(255, 0, 0);
    textSize(12);
    text("('A' and 'D' only functional in Level 3 en 6)", 200, height - 120);

    fill(#05DCFF);
    textSize(15);
    text("CONTROLS PLAYER 2", 550, 120);
    fill(255);
    text("UP", 550, 150);
    text("DOWN", 550, 250);
    text("LEFT", 480, 200);
    text("RIGHT", 610, 200);
    image(arrow, 550, 200, 80, 80);
    fill(255, 0, 0);
    textSize(12);
    text("('LEFT' and 'RIGHT' only functional in level 3 en 6)", width / 2 + 180, height - 120);

    fill(#05DCFF);
    textSize(15);
    text("Press left to see guide...", 220, height - 30);
    fill(#05DCFF);
    text("Press right to see power-ups...", width - 210, height - 30);
    textSize(15);
    fill(#05DCFF);
    text("Press SPACE to go back to main menu...", 200, 40);
  }

  //Power Up page
  void PowerUPguide() {
    fill(0);
    rect(width / 2, height / 2, width - 50, height - 50);

    fill(255);
    textSize(40);
    text("Power-ups:", width / 2, 80);
    textSize(20);
    text("Each power-up can give you extra advantages:", width / 2, 120);
//
    textSize(15);
    text("Gain an extra life:", 150, height / 2 - 30);
    image(hart, width / 2 - 100, height / 2 - 30, 50, 50);

    text("Gain additional time:", 150, height / 2 + 45);
    image(TimeUP, width / 2 - 100, height / 2 + 40, 230, 140);

    text("Both paddles will get longer:", width / 2 + 100, height / 2 - 30);
    image(PaddleSizeUpSymbol, width - 100, height / 2 - 30, 140, 120);

    text("Both paddles will get shorter:", width / 2 + 100, height / 2 + 45);
    image(PaddleSizeDownSymbol, width - 100, height / 2 + 40, 140, 120);

    text("Shrink the ball:", 150, height / 2 + 120);
    image(BallSizeDown, width / 2 - 100, height / 2 + 120, 75, 50);

    text("Increase the size of the ball:", width / 2 + 100, height / 2 + 120);
    image(BallSizeUp, width - 100, height / 2 + 120, 75, 50);


    fill(#05DCFF);
    text("Press LEFT to see controls...", 220, height - 30);
    fill(#05DCFF);
    text("Press RIGHT to see powershot...", width - 210, height - 30);
    textSize(15);
    fill(#05DCFF);
    text("Press SPACE to go back to main menu...", 200, 40);
  }

  //powershot page
  void PowershotGuide() {
    fill(0);
    rect(width / 2, height / 2, width - 50, height - 50);

    fill(255);
    textSize(40);
    text("Powershot:", width / 2, 80);

    fill(255, 0, 0);
    textSize(13);
    text("When a powershot is activated, the ball will move 1.5x as fast as usual.", width / 2, 150);
    text("When the ball is in powershot mode, it will ignore some of the obstacles, like boss attacks.", width / 2, 200);
    text("In level 7, you can break the meteorites using the powershot, so you won't lose lives.", width / 2, 250);
    text("When hitting the ball while you have powershot activated, you won't gain any score points.", width / 2, 300);
    //Meteor example
    fill(255);
    rect(200, 350, 20, 20);
    fill(255, 0, 0);
    text("Meteorite", 200, 330);
    //Boss Attack Example
    fill(204, 102, 0);
    rect(500, 360, 50, 50);
    fill(255, 0, 0);
    text("Boss attack", 500, 330);
    fill(#05DCFF);
    text("Press left to see power-ups...", 220, height - 30);
    textSize(15);
    fill(#05DCFF);
    text("Press SPACE to go back to main menu...", 200, 40);
  }
}
