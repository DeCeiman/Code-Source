//written by Altaaf Mangal
class StartScreen
{
  //Load Image
  PImage Guideicon = loadImage("Guideicon.png");
  void draw()
  {
    background2.draw();
    fill(255);
    //Draw Text
    textAlign(CENTER);
    textFont(myFont, 50);
    fill(#03F4FF);
    text("Pong: EVOLVED!", width / 2, height / 4);   
    
    fill(0, 255, 0);
    textSize(20);
   text("choose 'Play' and press 'RIGHT' to start", width / 2, height - 5);
    
    image(Guideicon, 150, height - 55, 70, 45);
    fill(255);
    textAlign(CENTER);
    textSize(20);
    text("Press LEFT to view the guide. ", width /2, height -50);
    
    audio.playsong2();
  }
}


class Button {
  PVector pos = new PVector(0, 0);
  float Width;
  float Height;
  String text;
  boolean start;

  Button(int x, int y, int w, int h, String t) {   //Button constructor
    pos.x = x;
    pos.y = y;
    Width = w;
    Height = h;
    text = t;
  }
  void displayButton() {  // display buttons
    rectMode(CENTER);
    textAlign(CENTER);
    stroke(255, 94, 215);
    fill(0);
    rect(pos.x, pos.y, Width, Height);
    textSize(30);
    fill(255);
    text(text, pos.x, pos.y + 7.5);
  }

  void selectStartButton() {
    if (keyCode == UP || (keyCode != UP && startbutton.start)) {
      startbutton.buttonPointer();
      startbutton.start = true;
    }
  }
  
  void selectQuitButton() {
    if (keyCode == DOWN || (keyCode != DOWN && !startbutton.start)) {
      quitbutton.buttonPointer();
      startbutton.start = false;
    }
  }

  void buttonPointer() {  //add buttonpointer
    fill(255);
    //triangle(150, 120, 130, 140, 160, 180);

    fill(#edff51);
    strokeWeight(3);
    stroke(43, 209, 252);
    triangle(pos.x - Width / 2 - 60, pos.y + Height / 2, pos.x - Width / 2-60, pos.y - Height / 2, pos.x - Width / 2 - 20, pos.y);
  }
}




class loadingScreen
{
   PImage arrow = loadImage("arrowfull.png");

  void drawLoadScreen()
  {
    background(0);
    textSize(15);
    fill(255);
    text("CONTROLS PLAYER 1", 170, 100);
    text("W", 170, 150);
    text("S", 170, 250);
    text("A", 120, 200);
    text("D", 220, 200);
    image(arrow, 170,200, 80, 80);
    
    text("CONTROLS PLAYER 2", 550, 100);
    text("UP", 550, 150);
    text("DOWN", 550, 250);
    text("LEFT", 480, 200);
    text("RIGHT", 610, 200);
    image(arrow, 550,200, 80, 80);
    textSize(20);
     text("PRESS SPACE TO START", 400,400);
    fill(0,255,0);
     text("WORK TOGETHER FOR A HIGHSCORE", 400, 320);
   
  }
}
