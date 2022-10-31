//Written by Ciarán Nijman, Finn Hoogerwerf, Bora Oksal, Jeffrey Huisman, Altaaf Mangal. IG-101-B.

//Audio
import processing.sound.*;

//Database
import samuelal.squelized.*;
import java.util.Properties;
Database database = new Database();

//ParticleSystem
ParticleSystem ps;
//Audio System
AudioSystem audio;

//Arrays
meteorites[] Meteorites = new meteorites[8];
char[] names = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'};
int nameSelectP1, nameSelectP2;

//Classes
Border border;

Level_1 level1;
Level_2 level2;
Level_3 level3;
Level_4 level4;
Level_5 level5; 
Level_6 level6; 
Level_7 level7; 
Level_8 level8; 
gameEnd gameEnd;

StartScreen startscreen;
levelTransition levelTrans;
loadingScreen LoadingScreen;

ball ball1;
paddles paddle1;
paddles paddle2;

LevelTimerBar timeBar;
VariableNotification note;

Boss theBoss;
Boss2 theBoss2;
Health bossHealth;
Health2 boss2Health;
Attack bossAttack;
Boss2Attack boss2Attack;

background1 background1;
background2 background2;
background3 background3;
background4 background4;
background5 background5;
background6 background6;
background7 background7;
background8 background8;

SoundFile song1;
SoundFile song2;
SoundFile song3;
SoundFile song4;
//SoundFile song5;
SoundFile hit;
SoundFile Growl;
SoundFile Ow;
SoundFile Boom;
SoundFile Attack;
SoundFile Pressed;
SoundFile Woosh;
SoundFile MetBoom;


//database variables
String name;

//gameState  var
int currentGameState;

//background
color  backgroundColor; 

color RED = #FF0000;
color ORANGE = #FF8000;
color YELLOW = #FFFF00;

//skins
int skinid;

boolean skinid1, skinid2, skinid3;

//fonts
PFont myFont;

//Variables Border
float borderX, borderY, borderW, borderH, borderStroke = 20;

//Variables Level_1
float sizeRect = 7.69; 

//Variables Level_2
float wallX = 360, wallY = 80, wallW = 50, wallH = 50;
float cWallX = wallX, cWallX2 = wallX, cWallY = 132, cWallY2 =216, cWallW = 50, cWallH = 50;

//Variables Level_3
float scrollSpeed;
float gravity = 0.2;
float backgroundY = -640;
float ballSpawnX1 = 220, ballSpawnX2 = 540;

//Variables Level_4
float mineX = 340, mineY = 166, mineW = 60, mineH = 60;
float textOpacity = 255, textFade = 0.1;
boolean mineHit = false;
float explosionX = mineX, explosionY = mineY, explosionW = mineW * 2, explosionH = mineH * 2;

//Variables Level_5
float metPosX, metPosY;
boolean ballHit = false;

//Variables Level_6
float backgroundY6 = 0;
float ballSpawnY = 157.5;

//Variables Level_7
boolean meteorHit;
//Variables Level_8

//Variables Level Transition
float screenShakeTimerHit = 0, screenShakeTimerTrans = 0;
boolean paused = false;

//Written by Finn Hoogerwerf, IG-101-B.
//Variables Ball
float ballX, ballY, moveBallX, moveBallY, ballRadius;
boolean hitX, hitY;
boolean powershotInUse = false;
boolean powershotReadyP1 = false;
boolean powershotReadyP2 = false;

//Variables Paddles
float paddleSpeed = 4;
boolean wKeyPressed, sKeyPressed, aKeyPressed, dKeyPressed, upKeyPressed, downKeyPressed, leftKeyPressed, rightKeyPressed, repositionPaddles;
int lastPaddleHit;

//Array Lists
ArrayList<LiveUp> liveup;
ArrayList<TimeUP> timeup;
ArrayList<BallSizeUp> ballup;
ArrayList<BallSizeDown> balldown;
ArrayList<PaddleSizeUp> paddleup;
ArrayList<PaddleSizeDown> paddledown;

// reset powerups before timer reaches 0
float resetPowerUps = (0.1 * 125) / 30;

// analytics variables
int BallHits;
int powerShotUsed; //V
int PowerUpsPickedUp; //V
int MinesHit, MinesDestroyed; //V
int MeteorsHit, MeteorsDestroyed;
int OtherDestroyed;
int LivesLost, LevelDied = currentGameState;


//Variables GuideScreen
GuideScreen guidescreen;

//Variables Startscreen
Button startbutton;
Button quitbutton;

//UI
Lives lives;
StopWatchTimer sw;
LevelCounter levelcounter;
Score score;

PImage hart;


void setup() {
  frameRate(60);
  size (768, 432);

  //Declare variables CrackedWall
  cWallX = wallX;
  cWallX2 = wallX;
  cWallY = 132;
  cWallY2 = 216;
  cWallW = 50;
  cWallH = 50;

  //Initialise Array
  for (int i = 0; i < Meteorites.length; i++) {
    float tempPosY = random(-200, -50);
    float tempPosX = random(100, 600);
    Meteorites[i] = new meteorites(tempPosX + (i * 100), tempPosY * i, 40, 40);
  }

  //Initialise Classes
  border = new Border();
  level1 = new Level_1();
  level2 = new Level_2();
  level3 = new Level_3();
  level4 = new Level_4();
  level5 = new Level_5();
  level6 = new Level_6();
  level7 = new Level_7();
  level8 = new Level_8();
  gameEnd = new gameEnd();
  startscreen = new StartScreen();
  levelTrans = new levelTransition();
  LoadingScreen = new loadingScreen();

  //Bosses
  theBoss = new Boss();
  theBoss2 = new Boss2();
  bossHealth = new Health();
  boss2Health = new Health2();
  bossAttack = new Attack();
  boss2Attack = new Boss2Attack();

  //Ball and paddle class
  ball1 = new ball();
  paddle1 = new paddles();
  paddle2 = new paddles();
  //Time Bar
  timeBar = new LevelTimerBar();
  //Pop-ups
  note = new VariableNotification();

  //Background classes
  background1 = new background1();
  background2 = new background2();
  background3 = new background3();
  background4 = new background4();
  background5 = new background5();
  background6 = new background6();
  background7 = new background7();
  background8 = new background8();

  //Audio
  song1 = new SoundFile(this, "song1s.mp3");
  song2 = new SoundFile(this, "song2s.mp3");
  song3 = new SoundFile(this, "song3l.mp3");
  song4 = new SoundFile(this, "song4s.mp3"); 
  //song5 = new SoundFile(this, "song5s.mp3");
  hit = new SoundFile(this, "hit.mp3");
  Growl = new SoundFile(this, "BossGrowl.mp3");
  Ow = new SoundFile(this, "BossPain.mp3");
  Boom = new SoundFile(this, "explosion.mp3");
  Attack = new SoundFile(this, "BossAttack.mp3");
  Pressed = new SoundFile(this, "ButtonPressed.mp3");
  Woosh = new SoundFile(this, "Powershot.mp3");
  MetBoom = new SoundFile(this, "meteorite_explosion.mp3");

  //systems
  ps = new ParticleSystem();
  audio = new AudioSystem();

  //Database setup
  if (database.setUp == false) database.setup();

  skinid1 = false;
  skinid2 = true;
  skinid3 = false;

  //Set image Mode
  imageMode(CENTER);

  //create arraylist for the lives powerup
  liveup = new ArrayList<LiveUp>(10);

  for (int i = 0; i < 10; i++) {
    liveup.add(new LiveUp());
  }

  //create arraylist for the time powerup
  timeup = new ArrayList<TimeUP>();
  for (int i = 0; i < 10; i++) {
    timeup.add(new TimeUP());
  }

  //create arraylist for the ball size powerup
  ballup = new ArrayList<BallSizeUp>();
  for (int i = 0; i < 10; i++) {
    ballup.add(new BallSizeUp());
  }

  //create arraylist for the ball size powerdown
  balldown = new ArrayList<BallSizeDown>();
  for (int i = 0; i < 10; i++) {
    balldown.add(new BallSizeDown());
  }

  //create arraylist for the paddle size powerup
  paddleup = new ArrayList<PaddleSizeUp>();
  for (int i = 0; i < 10; i++) {
    paddleup.add(new PaddleSizeUp());
  }

  //create arraylist for the paddle size powerup
  paddledown = new ArrayList<PaddleSizeDown>();
  for (int i = 0; i < 10; i++) {
    paddledown.add(new PaddleSizeDown());
  }

  //Guide and startscreen
  guidescreen = new GuideScreen();
  startbutton = new Button(width / 2, height / 2 + 25, 250, 50, "Play");
  quitbutton = new Button(width / 2, height / 2 + 100, 250, 50, "Quit");
  //Load hart image
  hart = loadImage("hart.png");
  //Lives
  lives = new Lives();
  //Stopawatch
  sw = new StopWatchTimer();
  sw.start();
  //Level Counter
  levelcounter = new LevelCounter();
  //Score
  score = new Score();

  //Set values for some of the variables for the paddles
  paddle1.paddleX = 70;
  paddle1.paddleY = 216;
  paddle1.paddleWidth = 8;
  paddle1.paddleLength = 50;
  paddle2.paddleX = 678;
  paddle2.paddleY = 216;
  paddle2.paddleWidth = 8;
  paddle2.paddleLength = 50;
  ballX = width / 2;
  ballY = height / 2;
  ballRadius = 10;

  //Create a random integer that's bigger or equal to 0 and smaller than 2 for ball1.moveBallX. If 0 is given, then ball1.moveBallX = -4, or else, ball1.moveBallX = 4.
  int determineBallDirection = int(random(0, 2));
  if (determineBallDirection == 0) {
    moveBallX = -4;
    moveBallY = -4;
  } else {
    moveBallX = 4;
    moveBallY = 4;
  }
  //Powershot variable declaration
  powershotReadyP1 = false;
  powershotReadyP2 = false;
  powershotInUse = false;

  //skins
  skinid = 2;

  //Game State Setup
  currentGameState = 0;

  //Set Background colour
  backgroundColor = #2c3552;

  //Create Custom Font
  myFont = createFont("RocketRinder-yV5d.ttf", 32);

  lastPaddleHit = 0;
  nameSelectP1 = 0;
  nameSelectP2 = 0;

  //Reset analytics
  BallHits = 0;
  powerShotUsed = 0; //V
  PowerUpsPickedUp = 0; //V
  MinesHit = 0; //V
  MinesDestroyed = 0;
  MeteorsHit = 0;
  MeteorsDestroyed = 0;
  OtherDestroyed = 0;
  LivesLost = 0;
  LevelDied = 0;
}

void draw() {
  //ScreenShake Tiner
  float screenShakeMinus = 0.033;
  screenShakeTimerHit -= screenShakeMinus;
  screenShakeTimerTrans -= screenShakeMinus;

  //Background colour
  background(backgroundColor);

  //Current Game State
  updateCurrentGamestate();

  //Run the code inside void movement().
  movement();

  //UI
  if (currentGameState > 0) {
    note.draw();
    lives.display();        // display Lives
    lives.loseLives();
    levelcounter.level();   // display level counter
    score.score();          // display score
    score.loseScore();
    fill(255);
    textAlign(CENTER);
    time();
    sw.stopthetimer();
  } else if (currentGameState == 0) {   // display buttons at the startscreen
    quitbutton.displayButton();
    quitbutton.selectQuitButton();
    startbutton.displayButton();
    startbutton.selectStartButton();
  }
  //Game over trigger
  if (lives.playerlives <= 0 && !sw.GameOver) {
    LevelDied = currentGameState;
    sw.GameOver = true;
  }
  //freeze paddles if game over
  if (sw.GameOver && currentGameState > 0) {
    if (currentGameState != 3 && currentGameState != 6) {
      paddle1.paddleX = 70;
      paddle1.paddleY = 216;
      paddle1.paddleWidth = 8;
      paddle1.paddleLength = 50;
      paddle2.paddleX = 678;
      paddle2.paddleY = 216;
      paddle2.paddleWidth = 8;
      paddle2.paddleLength = 50;
    }

    if (currentGameState == 3 || currentGameState == 6) {
      paddle1.paddleX = 200;
      paddle1.paddleY = 332;
      paddle1.paddleWidth = 50;
      paddle1.paddleLength = 8;
      paddle2.paddleX = 578;
      paddle2.paddleY = 332;
      paddle2.paddleWidth = 50;
      paddle2.paddleLength = 8;
    }

    //Set variables ball
    ballX = width / 2;
    ballY = height / 2;
    ballRadius = 10;

    nameInput();
  }

  //Ball respawn
  if (currentGameState == 3 || currentGameState == 6) {
    if (ballY >= height) {
      ballX = width / 2;
      ballY = height / 2;
      LivesLost += 1;
    }
  }


  //Set Border Variables
  if (currentGameState != 3 && currentGameState != 6 ) {
    borderX = -40;
    borderY = 20;
    borderW = 900;
    borderH = 394;
  }

  if (currentGameState == 3 || currentGameState == 6 ) {
    borderX = 35;
    borderW = 700;
    borderY = -40;
    borderH = 900;
  }
  //println(BallHits, powerShotUsed, PowerUpsPickedUp, MinesHit, LivesLost, LevelDied, MeteorsHit, MeteorsDestroyed);
  levelTrans.draw();
}


//Update Current Game State
void updateCurrentGamestate() {
  switch(currentGameState) {
  case -7:
    //skin select screen
    //skinSelect.draw();
  case -6:
    //"loading screen"
    LoadingScreen.drawLoadScreen();
    break;
  case -5:
    //Highscore screen
    database.draw();
    break;
  case -4:
    guidescreen.displayGuide();
    break;
  case -3:
    guidescreen.controlsGuide();
    break;
  case -2:
    guidescreen.PowerUPguide();
    break;
  case -1:
    guidescreen.PowershotGuide();
    break;
  case 0:
    //Start Screen
    startscreen.draw();
    audio.stopsong1();
    audio.stopsong4();
    audio.stopsong3();
    break;
  case 1:
    //Level 1
    level1.draw();
    break;
  case 2:
    //level 2
    level2.draw();
    break;
  case 3:
    //level 3
    level3.draw();
    break;
  case 4:
    //level 4
    level4.draw();
    break;
  case 5:
    //level 5
    level5.draw();
    break;
  case 6:
    //level 6
    level6.draw();
    break;
  case 7:
    //level 7
    level7.draw();
    break;
  case 8:
    //level 8
    level8.draw();
    break;
  case 9:
    //end of game, fill in name
    gameEnd.draw();
    break;
  }
}

//Paddle movement. Written and designed by Finn Hoogerwerf
void movement() {
  if (currentGameState > 0) {
    if (wKeyPressed) paddle1.paddleY -= paddleSpeed;
    if (sKeyPressed) paddle1.paddleY += paddleSpeed;

    if (currentGameState == 3 || currentGameState == 6) {
      if (aKeyPressed) paddle1.paddleX -= paddleSpeed;
    }

    if (currentGameState == 3 || currentGameState == 6) {
      if (dKeyPressed) paddle1.paddleX += paddleSpeed;
    }

    if (upKeyPressed) paddle2.paddleY -= paddleSpeed;
    if (downKeyPressed) paddle2.paddleY += paddleSpeed;

    if (currentGameState == 3 || currentGameState == 6) {
      if (leftKeyPressed) paddle2.paddleX -= paddleSpeed;
    }

    if (currentGameState == 3 || currentGameState == 6) {
      if (rightKeyPressed) paddle2.paddleX += paddleSpeed;
    }
  }
}

void nameInput() {
  //Name input
  fill(#edff51);
  stroke(43, 209, 252);
  strokeWeight(3);
  triangle(width / 2 - 60, height / 2 - 30, width / 2 - 50, height / 2 - 50, width / 2 - 40, height / 2 - 30);
  triangle(width / 2 - 60, height / 2 + 25, width / 2 - 50, height / 2 + 45, width / 2 - 40, height / 2 + 25);
  triangle(width / 2 + 60, height / 2 - 30, width / 2 + 50, height / 2 - 50, width / 2 + 40, height / 2 - 30);
  triangle(width / 2 + 60, height / 2 + 25, width / 2 + 50, height / 2 + 45, width / 2 + 40, height / 2 + 25);
  if (sw.GameOver) {
    fill(255, 0, 0);
    text("Out of lives!", width / 2, height / 3 - 20);
  } else {
    fill(0, 255, 0);
    text("Game complete!", width / 2, height / 3 - 20);
  }
  fill(255);
  text("Names:", width / 2, height / 2 - 60);
  textSize(50);
  fill(#edff51);
  text(names[nameSelectP1], width / 2 - 50, height / 2 + 15);
  text(names[nameSelectP2], width / 2 + 50, height / 2 + 15);
  fill(255);
  textSize(30);
  text("&", width / 2, height / 2 + 10);
  text("Press SPACE to continue...", width / 2, height - 100);


  if (keyPressed && key == ' ' && currentGameState > 0) {
    name = names[nameSelectP1] + " & " + names[nameSelectP2];
    database.getScore();
    currentGameState = -5;
    audio.stopsong1();
    audio.stopsong4();
    audio.stopsong3();
  }
}

// draw timer
void time() {  
  text(nf(sw.minute(), 2) + "." + nf(sw.second(), 2), width / 2, 30);  // draw the timer
}

void restart() {
  setup();
}

//Switch Game State
void keyPressed() {
  if (currentGameState == 0) {
    if (keyCode == UP || key == 'w') {
      startbutton.buttonPointer();
      startbutton.start = true;
    }

    if (startbutton.start == true && keyCode == RIGHT) {
      currentGameState = -6;
      audio.ButtonPressed();
    }

    if (keyCode == DOWN || key == 's') {
      quitbutton.buttonPointer();
      startbutton.start = false;
    }

    if (startbutton.start == false && keyCode == RIGHT) exit();
    if (currentGameState == 0 && keyCode == LEFT) {
      currentGameState = -4;
      audio.ButtonPressed();
    }
  }

  //startscreen to loadingscreen
  /* if (keyCode == ENTER && (skinSelect.skinid1 == true)){
   audio.ButtonPressed();
   currentGameState = -6;
   }
   
   if (keyCode == ENTER && (skinSelect.skinid2 == true)){
   audio.ButtonPressed();
   currentGameState = -6;
   }
   
   if (keyCode == ENTER && (skinSelect.skinid3 == true)){
   audio.ButtonPressed();
   currentGameState = -6;
   } */

  if (currentGameState == -6)
  {
    if (key == ' ') {
      currentGameState = 1;
      sw.startTime = millis();
    }
  }
  if (currentGameState < 0 && currentGameState > -5) {
    if (keyCode == LEFT && currentGameState > -4) 
      currentGameState -= 1;
    audio.ButtonPressed();
    if (keyCode == RIGHT && currentGameState < -1) 
      currentGameState += 1;
    audio.ButtonPressed();
    if (key == 32) currentGameState = 0;
  }

  if (key == 'l' || key == 'j') {
    timeBar.remainingTime = 125;

    if (key == 'l' && (currentGameState == 2 || currentGameState == 5)) repositionPaddles = true;
    if (key == 'j' && (currentGameState == 4 || currentGameState == 7)) repositionPaddles = true;
    if (key == 'l') currentGameState += 1;
    if (key == 'j') currentGameState -= 1;

    //Reset Ball Position
    ballX = width/2;
    ballY = height/2;

    //Reset Paddles
    if (currentGameState != 3 && currentGameState != 6) {
      paddle1.paddleX = 70;
      paddle1.paddleY = 216;
      paddle1.paddleWidth = 8;
      paddle1.paddleLength = 50;
      paddle2.paddleX = 678;
      paddle2.paddleY = 216;
      paddle2.paddleWidth = 8;
      paddle2.paddleLength = 50;
    }

    //Reset Speed
    if (moveBallX >= 0 && moveBallY >= 0) {
      moveBallX = 4;
      moveBallY = 4;
    }

    if (moveBallX <= 0 && moveBallY <= 0) {
      moveBallX = -4;
      moveBallY = -4;
    }
  }

  //Written by Finn Hoogerwerf, IG-101-B.
  if (key == 'w' || key == 'W') wKeyPressed = true;
  if (key == 's' || key == 'S') sKeyPressed = true;
  if (key == 'a' || key == 'A') aKeyPressed = true;
  if (key == 'd' || key == 'D') dKeyPressed = true;
  if (keyCode == UP) upKeyPressed = true;
  if (keyCode == DOWN) downKeyPressed = true;
  if (keyCode == LEFT) leftKeyPressed = true;
  if (keyCode == RIGHT) rightKeyPressed = true;

  if (sw.GameOver || currentGameState == 9) {
    if (key == 'w') {
      if (nameSelectP1 == 0) nameSelectP1 = 25;
      else if (nameSelectP1 > 0) nameSelectP1 -= 1;
    }

    if (key == 's') {
      if (nameSelectP1 == 25) nameSelectP1 = 0;
      else if (nameSelectP1 < 25) nameSelectP1 += 1;
    }

    if (keyCode == UP) {
      if (nameSelectP2 == 0) nameSelectP2 = 25;
      else if (nameSelectP2 > 0) nameSelectP2 -= 1;
    }

    if (keyCode == DOWN) {
      if (nameSelectP2 == 25) nameSelectP2 = 0;
      else if (nameSelectP2 < 25) nameSelectP2 += 1;
    }
  }
}

void keyReleased() {
  if (key == 'w' || key == 'W') wKeyPressed = false;
  if (key == 's' || key == 'S') sKeyPressed = false;
  if (key == 'a' || key == 'A') aKeyPressed = false;
  if (key == 'd' || key == 'D') dKeyPressed = false;
  if (keyCode == UP) upKeyPressed = false;
  if (keyCode == DOWN) downKeyPressed = false;
  if (keyCode == LEFT) leftKeyPressed = false;
  if (keyCode == RIGHT) rightKeyPressed = false;
}

//Collision code and script written by Ciarán Nijman, all references to this script is made by Ciarán Nijman

// Circle/Rectangle Collision with Objects
boolean circRect(float cX, float cY, float radius, float rX, float rY, float rW, float rH) {
  float testX = cX;
  float testY = cY;
  //Find closest edge
  if (cX < rX) testX = rX;
  else if (cX > rX + rW)  testX = rX + rW;

  if (cY < rY) testY = rY;
  else if (cY > rY + rH) testY = rY + rH;

  hitX = false;
  hitY = false;

  if (cX < rX || cX > rX + rW)hitX = true;
  if (cY < rY || cY > rY + rH) hitY = true;

  if (floatDifference(cX + radius, rX) - floatDifference(cY + radius, rY) > rW || floatDifference(cX - radius, rX + rW) - floatDifference(cY - radius, rY + rH) > rW) hitX = true;
  else if (floatDifference(cX + radius, rX) - floatDifference(cY + radius, rY) < rH || floatDifference(cX - radius, rX + rW) - floatDifference(cY - radius, rY + rH) < rH) hitY = true;

  else {
    hitX = true;
    hitY = true;
  }

  float distX = cX - testX;
  float distY = cY - testY; 
  float distance = sqrt((distX * distX) + (distY * distY));

  if (distance <= radius) return true;

  return false;
}

float floatDifference(float x, float y) {
  if (y > x) return y - x;
  else return x - y;
}

//Collision code and script written by Ciarán Nijman, all references to this script is made by Ciarán Nijman
class levelTransition {
  void draw() { 
    if (screenShakeTimerHit > 0) {
      float shakeAmount = random(-10, 10);
      PImage screenImage = get();
      imageMode(CORNER);
      image(screenImage, shakeAmount, shakeAmount);
      paused = true;
    } else paused = false;
    if (screenShakeTimerTrans > 0) {
      float shakeAmount = random(-10, 10);
      PImage screenImage = get();
      imageMode(CORNER);
      image(screenImage, shakeAmount, shakeAmount);
      paused = true;
    } else paused = false;
  }
}
