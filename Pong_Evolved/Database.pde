//Written by Ciarán Nijman
class Database
{
  SQLConnection myConnection;
  Table testTable;
  Properties props;
  int amountHighscoreShow = 4;
  boolean setUp;

  void setup()
  {
    props = new Properties();
    props.setProperty("user", "nijmanc2");
    props.setProperty("password", "edmdzEaj376AYC6$");
    myConnection = new MySQLConnection("jdbc:mysql://oege.ie.hva.nl/znijmanc2?serverTimezone=UTC", props);

    testTable = myConnection.getTable("Session");
    testTable = myConnection.runQuery("SELECT name, highscore FROM Session ORDER BY highscore DESC LIMIT " + amountHighscoreShow);

    testTable = myConnection.runQuery("SELECT * FROM Cosmetics WHERE skinid = 1");

    testTable = myConnection.runQuery("SELECT BallHit, PowerShotUsed, LivesLost, LevelDied, MeteorsHit, MeteorsDestroyed, MinesHit, PowerupHit FROM Session");

    setUp = true;
  }

  void printTable(Table table)
  {
    textAlign(CENTER);
    textSize(20);
    fill(255);
    text("NAME", 50, 25);
    text("HIGHSCORE", 200, 25);
    text("__________________", 150, 50);
    for (int i = 0; i <table.getRowCount(); i++)
    {
      TableRow row = table.getRow(i);
      for (int j = 0; j < row.getColumnCount(); j++)
      {
        text(row.getString(j), 50 + 150 * j, 100 + 30 * i);
      }
    }
    line(0, height/2, width, height/2);
    textSize(55);
    text("PONG", 600,100);
    text("EVOLVED", 590,175);

    //Analytics text
    textSize(20);
    text("Analytics", 100, height / 2 + 50);

    textAlign(LEFT);
    textSize(15);
    text("Ball hits:", 15, height / 2 + 90);
    text("Powershots used :", 15, height / 2 + 105);
    text("Power-Ups picked up:", 15, height / 2 + 120);
    text("Mines hit:", 15, height / 2 + 135);
    text("Meteors hit:", 15, height / 2 + 150);
    text("Meteors destroyed:", 15, height / 2 + 165);
    text("Lives lost:", 15, height / 2 + 180);
    if (LevelDied > 0) text("Level game-over:", 15, height / 2 + 195);
    
    text(BallHits, 250, height / 2 + 90);
    text(powerShotUsed, 250, height / 2 + 105);
    text(PowerUpsPickedUp, 250, height / 2 + 120);
    text(MinesHit, 250, height / 2 + 135);
    text(MeteorsHit, 250, height / 2 + 150);
    text(MeteorsDestroyed, 250, height / 2 + 165);
    text(LivesLost, 250, height / 2 + 180);
    if (LevelDied > 0) text(LevelDied, 250, height / 2 + 195);
  }

  void getScore()
  {
    myConnection.updateQuery("INSERT INTO Session (name, highscore, BallHit, PowerShotUsed, PowerupHit, MinesHit, MeteorsHit, MeteorsDestroyed, LivesLost, LevelDied) value ('"
    +name+"', "+score.playerScore+", "+BallHits+", "+powerShotUsed+", "+PowerUpsPickedUp+", "+MinesHit+", "+MeteorsHit+", "+MeteorsDestroyed+", "+LivesLost+", "+LevelDied+")");
    
    testTable = myConnection.getTable("Session");
    
    testTable = myConnection.runQuery("SELECT name, highscore FROM Session ORDER BY highscore DESC LIMIT " + amountHighscoreShow);
    
    myConnection.runQuery("SELECT PlayerHasAchievement.Session_idSession, Session.idSession FROM PlayerHasAchievement INNER JOIN Session ON PlayerHasAchievement.Session_idSession = Session.idSession");
    if (MinesDestroyed + MeteorsDestroyed + OtherDestroyed >= 25)  myConnection.updateQuery("INSERT INTO PlayerHasAchievement (Achievements_Achievementsid) value (1)");
    if (LivesLost == 0) myConnection.updateQuery("INSERT INTO PlayerHasAchievement (Achievements_Achievementsid) value (2)");
    if (score.playerScore >= 2000) myConnection.updateQuery("INSERT INTO PlayerHasAchievement (Achievements_Achievementsid) value (3)");
    if (LevelDied > 5 || LevelDied == 0) myConnection.updateQuery("INSERT INTO PlayerHasAchievement (Achievements_Achievementsid) value (4)");
    if (LevelDied > 8 || LevelDied == 0) myConnection.updateQuery("INSERT INTO PlayerHasAchievement (Achievements_Achievementsid) value (5)");
    if (BallHits == 69) myConnection.updateQuery("INSERT INTO PlayerHasAchievement (Achievements_Achievementsid) value (6)");
  }

  void draw()
  {
    printTable(testTable);
    text("Press SPACE to continue...", width / 2, height - 25);
    if (keyPressed && key == ' ' && currentGameState == -5) restart();
  }
  
  void addbackground1(){
   if (skinid1 == true); 
    myConnection.runQuery("SELECT * FROM Cosmetics WHERE skinid = 1");
  }
  
  void addbackground2(){
   if (skinid2 == true); 
    myConnection.runQuery("SELECT * FROM Cosmetics WHERE skinid = 2");
  }
  
  void addbackground3(){
   if (skinid3 == true); 
    myConnection.runQuery("SELECT * FROM Cosmetics WHERE skinid = 3");
  }
  
  void printImages(){
   myConnection.runQuery("SELECT SkinIMG FROM PlayerCosmetics WHERE skinid = 1");
   myConnection.runQuery("SELECT SkinIMG FROM PlayerCosmetics WHERE skinid = 2");
   myConnection.runQuery("SELECT SkinIMG FROM PlayerCosmetics WHERE skinid = 3");
  }
}
