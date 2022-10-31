class background1 
{
//basic retro background, by Jeffrey Huisman, Ig101-B
//description
  
  color background = 0;
  color Background1and2 = #141738; 
  color Mountainshills = #334252;
  color floor = #141738;
  color grid = #b252a1;
  color star = 255;
  
  
 void draw(){
    rectMode(CORNER);
  //main sky
    background(Background1and2);
    
  //hills
  noStroke();
  fill(Mountainshills);
  triangle(150,282,225,220,350,282);
  
  noStroke();
  fill(Mountainshills);
  circle(100,350,300);
  
  noStroke();
  fill(Mountainshills);
  circle(600,350,300);
  
  noStroke();
  fill(Mountainshills);
  circle(350,400,400);
  
  noStroke();
  fill(Mountainshills);
  triangle(700,282,790,300,790,216);
  
  //floor
  noStroke();
  fill(floor);
  rect(0,282,768,282);
  
  //grid vertical
  stroke(grid);
  strokeWeight(1);
  line(0,282,768,282);
  
  stroke(grid);
  strokeWeight(1);
  line(0,292,768,292);
  
  stroke(grid);
  strokeWeight(1);
  line(0,302,768,302);
  
  stroke(grid);
  strokeWeight(1);
  line(0,312,768,312);
  
  stroke(grid);
  strokeWeight(2);
  line(0,332,768,332);
  
  stroke(grid);
  strokeWeight(2);
  line(0,352,768,352);
  
  stroke(grid);
  strokeWeight(3);
  line(0,377,768,377);
  
  stroke(grid);
  strokeWeight(3);
  line(0,402,768,402);
  
  stroke(grid);
  strokeWeight(4);
  line(0,427,768,427);
  
  //grid horizontal
  stroke(grid);
  strokeWeight(3);
  line(384,432,384,282);
  
  stroke(grid);
  strokeWeight(3);
  line(484,432,432,282);
  
  stroke(grid);
  strokeWeight(3);
  line(584,432,480,282);
  
  stroke(grid);
  strokeWeight(3);
  line(684,432,528,282);
  
  stroke(grid);
  strokeWeight(3);
  line(784,432,576,282);
  
  stroke(grid);
  strokeWeight(3);
  line(884,432,624,282);
  
  stroke(grid);
  strokeWeight(3);
  line(984,432,672,282);
  
  stroke(grid);
  strokeWeight(3);
  line(1084,432,720,282);
  
  stroke(grid);
  strokeWeight(3);
  line(284,432,336,282);
  
  stroke(grid);
  strokeWeight(3);
  line(184,432,288,282);
  
  stroke(grid);
  strokeWeight(3);
  line(84,432,240,282);
  
  stroke(grid);
  strokeWeight(3);
  line(-84,432,192,282);
  
  stroke(grid);
  strokeWeight(3);
  line(-184,432,144,282);
  
  stroke(grid);
  strokeWeight(3);
  line(-284,432,96,282);
  
  stroke(grid);
  strokeWeight(3);
  line(-384,432,48,282);
  
  //stars
  noStroke();
  fill(star);
  circle(33,33,5);
  
  noStroke();
  fill(star);
  circle(701,55,5);
  
  noStroke();
  fill(star);
  circle(209,87,5);
  
  noStroke();
  fill(star);
  circle(556,7,5);
  
  noStroke();
  fill(star);
  circle(619,93,5);
  
  noStroke();
  fill(star);
  circle(387,55,5);
  
  noStroke();
  fill(star);
  circle(513,192,5);
  
  noStroke();
  fill(star);
  circle(85,13,5);
  
  noStroke();
  fill(star);
  circle(700,77,5);
  
  noStroke();
  fill(star);
  circle(100,83,5);
  
  
  } 
}

class background2 {
//still pretty basic retro background, by Jeffrey Huisman, Ig101-B
//description: grid, mountains, stars and sun
  
  void draw(){
     rectMode(CORNER);
  //main sky
    background(20,23,56);
    
  //stars
  noStroke();
  fill(255,255,255);
  circle(33,33,5);
  
  noStroke();
  fill(255,255,255);
  circle(701,55,5);
  
  noStroke();
  fill(255,255,255);
  circle(209,87,5);
  
  noStroke();
  fill(255,255,255);
  circle(556,7,5);
  
  noStroke();
  fill(255,255,255);
  circle(619,93,5);
  
  noStroke();
  fill(255,255,255);
  circle(387,55,5);
  
  noStroke();
  fill(255,255,255);
  circle(513,192,5);
  
  noStroke();
  fill(255,255,255);
  circle(85,13,5);
  
  noStroke();
  fill(255,255,255);
  circle(700,77,5);
  
  noStroke();
  fill(255,255,255);
  circle(100,83,5);
    
  //Sun
  noStroke();
  fill(253,237,78);
  circle(384,125,200);
  
  noStroke();
  fill(20,23,56);
  rect(284,200,200,12);
  
  noStroke();
  fill(20,23,56);
  rect(284,185,200,10);
  
  noStroke();
  fill(20,23,56);
  rect(284,170,200,8);
  
  noStroke();
  fill(20,23,56);
  rect(284,160,200,6);
  
  noStroke();
  fill(20,23,56);
  rect(284,150,200,4);
  
  //mountains
  stroke(43,209,252);
  strokeWeight(3);
  fill(51,61,82);
  triangle(0,285,55,235,150,285);
  
  stroke(43,209,252);
  strokeWeight(3);
  fill(51,61,82);
  triangle(-5,285,-5,216,75,285);
  
  stroke(43,209,252);
  strokeWeight(3);
  fill(51,61,82);
  triangle(150,235,200,285,300,235);
  
  stroke(43,209,252);
  strokeWeight(5);
  fill(51,61,82);
  triangle(250,285,350,195,450,285);
  
  stroke(43,209,252);
  strokeWeight(3);
  fill(51,61,82);
  triangle(50,285,125,195,125,285);
  
  stroke(43,209,252);
  strokeWeight(3);
  fill(51,61,82);
  triangle(125,195,125,285,200,285);
  
  stroke(43,209,252);
  strokeWeight(3);
  fill(51,61,82);
  triangle(200,285,300,235,310,285);
  
  stroke(43,209,252);
  strokeWeight(3);
  fill(51,61,82);
  triangle(360,245,415,285,475,215);
  
  stroke(43,209,252);
  strokeWeight(3);
  fill(51,61,82);
  triangle(415,285,450,195,485,285);
  
  stroke(43,209,252);
  strokeWeight(3);
  fill(51,61,82);
  triangle(415,285,555,175,555,295);
    
  stroke(43,209,252);
  strokeWeight(3);
  fill(51,61,82);
  triangle(555,175,600,295,600,145);
  
  stroke(43,209,252);
  strokeWeight(3);
  fill(51,61,82);
  triangle(600,195,600,295,675,235);
  
  stroke(43,209,252);
  strokeWeight(3);
  fill(51,61,82);
  triangle(555,175,555,295,650,290);
  
  stroke(43,209,252);
  strokeWeight(3);
  fill(51,61,82);
  triangle(600,285,700,215,715,285);
  
  stroke(43,209,252);
  strokeWeight(3);
  fill(51,61,82);
  triangle(650,285,725,205,799,285);
  
  stroke(43,209,252);
  strokeWeight(3);
  fill(51,61,82);
  triangle(700,282,790,300,790,216);
  
  
  
  //floor
  noStroke();
  fill(20,23,56);
  rect(0,282,768,282);
  
  
  
  //grid
  stroke(178,82,161);
  strokeWeight(1);
  line(0,282,768,282);
  
  stroke(178,82,161);
  strokeWeight(1);
  line(0,292,768,292);
  
  stroke(178,82,161);
  strokeWeight(1);
  line(0,302,768,302);
  
  stroke(178,82,161);
  strokeWeight(1);
  line(0,312,768,312);
  
  stroke(178,82,161);
  strokeWeight(2);
  line(0,332,768,332);
  
  stroke(178,82,161);
  strokeWeight(2);
  line(0,352,768,352);
  
  stroke(178,82,161);
  strokeWeight(3);
  line(0,377,768,377);
  
  stroke(178,82,161);
  strokeWeight(3);
  line(0,402,768,402);
  
  stroke(178,82,161);
  strokeWeight(4);
  line(0,427,768,427);
  
  //grid
  stroke(255,94,215);
  strokeWeight(3);
  line(384,432,384,282);
  
  stroke(255,94,215);
  strokeWeight(3);
  line(484,432,432,282);
  
  stroke(255,94,215);
  strokeWeight(3);
  line(584,432,480,282);
  
  stroke(255,94,215);
  strokeWeight(3);
  line(684,432,528,282);
  
  stroke(255,94,215);
  strokeWeight(3);
  line(784,432,576,282);
  
  stroke(255,94,215);
  strokeWeight(3);
  line(884,432,624,282);
  
  stroke(255,94,215);
  strokeWeight(3);
  line(984,432,672,282);
  
  stroke(255,94,215);
  strokeWeight(3);
  line(1084,432,720,282);
  
  stroke(255,94,215);
  strokeWeight(3);
  line(284,432,336,282);
  
  stroke(255,94,215);
  strokeWeight(3);
  line(184,432,288,282);
  
  stroke(255,94,215);
  strokeWeight(3);
  line(84,432,240,282);
  
  stroke(255,94,215);
  strokeWeight(3);
  line(-84,432,192,282);
  
  stroke(255,94,215);
  strokeWeight(3);
  line(-184,432,144,282);
  
  stroke(255,94,215);
  strokeWeight(3);
  line(-284,432,96,282);
  
  stroke(255,94,215);
  strokeWeight(3);
  line(-384,432,48,282);
  
 
  
  }
}

class background3{
  void draw(){
    
    int centerY = 216;
    int StarY1 = 33;
    int Gridvertical = 432;
    int GalPosY = -1168;

    rectMode(CORNER);
  //space
    background(0);
    
  //outer ozone layer
   noStroke();
   fill(#00022e);
   circle(384,centerY+1,1532);
   
   //high ozone layer
   noStroke();
   fill(#000230);
   circle(384,centerY+1,1200);
   
   //low ozone layer
   noStroke();
   fill(20,23,56);
   circle(384,centerY+1,1000);
    
  //stars
  noStroke();
  fill(255,255,255);
  circle(33,StarY1,5);
  
  noStroke();
  fill(255,255,255);
  circle(701,55,5);
  
  noStroke();
  fill(255,255,255);
  circle(209,87,5);
  
  noStroke();
  fill(255,255,255);
  circle(556,7,5);
  
  noStroke();
  fill(255,255,255);
  circle(619,93,5);
  
  noStroke();
  fill(255,255,255);
  circle(387,55,5);
  
  noStroke();
  fill(255,255,255);
  circle(513,192,5);
  
  noStroke();
  fill(255,255,255);
  circle(85,13,5);
  
  noStroke();
  fill(255,255,255);
  circle(700,77,5);
  
  noStroke();
  fill(255,255,255);
  circle(100,83,5);
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  //galaxy
  stroke(0);
  fill(255);
  ellipse(488,-1168,5,10);
  rotate(PI/1);
    
  //Sun
  noStroke();
  fill(253,237,78);
  circle(384,-650,200);
  
  noStroke();
  fill(20,23,56);
  rect(284,-575,200,12);
  
  noStroke();
  fill(20,23,56);
  rect(284,-590,200,10);
  
  noStroke();
  fill(20,23,56);
  rect(284,-605,200,8);
  
  noStroke();
  fill(20,23,56);
  rect(284,-620,200,6);
  
  noStroke();
  fill(20,23,56);
  rect(284,-635,200,4);
  
  //mountains
  stroke(43,209,252);
  strokeWeight(3);
  fill(51,61,82);
  triangle(0,285,55,235,150,285);
  
  stroke(43,209,252);
  strokeWeight(3);
  fill(51,61,82);
  triangle(-5,285,-5,216,75,285);
  
  stroke(43,209,252);
  strokeWeight(3);
  fill(51,61,82);
  triangle(150,235,200,285,300,235);
  
  stroke(43,209,252);
  strokeWeight(5);
  fill(51,61,82);
  triangle(250,285,350,195,450,285);
  
  stroke(43,209,252);
  strokeWeight(3);
  fill(51,61,82);
  triangle(50,285,125,195,125,285);
  
  stroke(43,209,252);
  strokeWeight(3);
  fill(51,61,82);
  triangle(125,195,125,285,200,285);
  
  stroke(43,209,252);
  strokeWeight(3);
  fill(51,61,82);
  triangle(200,285,300,235,310,285);
  
  stroke(43,209,252);
  strokeWeight(3);
  fill(51,61,82);
  triangle(360,245,415,285,475,215);
  
  stroke(43,209,252);
  strokeWeight(3);
  fill(51,61,82);
  triangle(415,285,450,195,485,285);
  
  stroke(43,209,252);
  strokeWeight(3);
  fill(51,61,82);
  triangle(415,285,555,175,555,295);
    
  stroke(43,209,252);
  strokeWeight(3);
  fill(51,61,82);
  triangle(555,175,600,295,600,145);
  
  stroke(43,209,252);
  strokeWeight(3);
  fill(51,61,82);
  triangle(600,195,600,295,675,235);
  
  stroke(43,209,252);
  strokeWeight(3);
  fill(51,61,82);
  triangle(555,175,555,295,650,290);
  
  stroke(43,209,252);
  strokeWeight(3);
  fill(51,61,82);
  triangle(600,285,700,215,715,285);
  
  stroke(43,209,252);
  strokeWeight(3);
  fill(51,61,82);
  triangle(650,285,725,205,799,285);
  
  stroke(43,209,252);
  strokeWeight(3);
  fill(51,61,82);
  triangle(700,282,790,300,790,216);
  
  
  
  //floor
  noStroke();
  fill(20,23,56);
  rect(0,282,768,282);
  
  
  
  //grid
  stroke(178,82,161);
  strokeWeight(1);
  line(0,282,768,282);
  
  stroke(178,82,161);
  strokeWeight(1);
  line(0,292,768,292);
  
  stroke(178,82,161);
  strokeWeight(1);
  line(0,302,768,302);
  
  stroke(178,82,161);
  strokeWeight(1);
  line(0,312,768,312);
  
  stroke(178,82,161);
  strokeWeight(2);
  line(0,332,768,332);
  
  stroke(178,82,161);
  strokeWeight(2);
  line(0,352,768,352);
  
  stroke(178,82,161);
  strokeWeight(3);
  line(0,377,768,377);
  
  stroke(178,82,161);
  strokeWeight(3);
  line(0,402,768,402);
  
  stroke(178,82,161);
  strokeWeight(4);
  line(0,427,768,427);
  
  //grid
  stroke(255,94,215);
  strokeWeight(3);
  line(384,432,384,282);
  
  stroke(255,94,215);
  strokeWeight(3);
  line(484,432,432,282);
  
  stroke(255,94,215);
  strokeWeight(3);
  line(584,432,480,282);
  
  stroke(255,94,215);
  strokeWeight(3);
  line(684,432,528,282);
  
  stroke(255,94,215);
  strokeWeight(3);
  line(784,432,576,282);
  
  stroke(255,94,215);
  strokeWeight(3);
  line(884,432,624,282);
  
  stroke(255,94,215);
  strokeWeight(3);
  line(984,432,672,282);
  
  stroke(255,94,215);
  strokeWeight(3);
  line(1084,432,720,282);
  
  stroke(255,94,215);
  strokeWeight(3);
  line(284,432,336,282);
  
  stroke(255,94,215);
  strokeWeight(3);
  line(184,432,288,282);
  
  stroke(255,94,215);
  strokeWeight(3);
  line(84,432,240,282);
  
  stroke(255,94,215);
  strokeWeight(3);
  line(-84,432,192,282);
  
  stroke(255,94,215);
  strokeWeight(3);
  line(-184,432,144,282);
  
  stroke(255,94,215);
  strokeWeight(3);
  line(-284,432,96,282);
  
  stroke(255,94,215);
  strokeWeight(3);
  line(-384,432,48,282);
  
  //Skyscrapers
  
  stroke(#d71ad0);
  strokeWeight(3);
  fill(#30062e);
  rect(20,285,50,-100);
  
  stroke(#d71ad0);
  strokeWeight(3);
  fill(#30062e);
  rect(100,285,125,0);
  
  stroke(#d71ad0);
  strokeWeight(3);
  fill(#30062e);
  rect(150,285,200,-100);
  
  stroke(#d71ad0);
  strokeWeight(3);
  fill(#30062e);
  rect(225,285,300,-100);
  
  stroke(#d71ad0);
  strokeWeight(3);
  fill(#30062e);
  rect(350,285,450,100);
  
  stroke(#d71ad0);
  strokeWeight(3);
  fill(#30062e);
  rect(499,285,555,-450);
  
  stroke(#d71ad0);
  strokeWeight(3);
  fill(#30062e);
  rect(566,285,600,-100);
  
  stroke(#d71ad0);
  strokeWeight(3);
  fill(#30062e);
  rect(606,285,666,-50);
  
  stroke(#d71ad0);
  strokeWeight(3);
  fill(#30062e);
  rect(670,285,700,-25);
  
  stroke(#d71ad0);
  strokeWeight(3);
  fill(#30062e);
  rect(710,285,777,25);
  
  stroke(#d71ad0);
  strokeWeight(3);
  fill(#180317);
  rect(45,285,99,-1);
  
  stroke(#d71ad0);
  strokeWeight(3);
  fill(#180317);
  rect(100,285,150,-10);
  
  stroke(#d71ad0);
  strokeWeight(3);
  fill(#180317);
  rect(250,285,300,-100);
  
  stroke(#d71ad0);
  strokeWeight(3);
  fill(#180317);
  rect(300,285,450,-5);
  
  stroke(#d71ad0);
  strokeWeight(3);
  fill(#180317);
  rect(650,285,715,-100);
  
 
  
  }
}


class background4 {
//space, by Jeffrey Huisman, Ig101-B
//description: space; earth, stars and sun
  
  void draw(){
    rectMode(CORNER);
  //main sky
    background(0);
    
  //stars
  noStroke();
  fill(255,255,255);
  circle(33,33,3);
  
  noStroke();
  fill(255,255,255);
  circle(701,55,9);
  
  noStroke();
  fill(255,255,255);
  circle(209,87,1);
  
  noStroke();
  fill(255,255,255);
  circle(556,7,2);
  
  noStroke();
  fill(255,255,255);
  circle(619,93,7);
  
  noStroke();
  fill(255,255,255);
  circle(387,55,5);
  
  noStroke();
  fill(255,255,255);
  circle(513,192,8);
  
  noStroke();
  fill(255,255,255);
  circle(85,13,3);
  
  noStroke();
  fill(255,255,255);
  circle(700,77,3);
  
  noStroke();
  fill(255,255,255);
  circle(100,83,1);
  
  noStroke();
  fill(255,255,255);
  circle(666,333,5);
  
  noStroke();
  fill(255,255,255);
  circle(10,257,5);
  
  noStroke();
  fill(255,255,255);
  circle(420,369,5);
  
  noStroke();
  fill(255,255,255);
  circle(321,321,4);
  
  noStroke();
  fill(255,255,255);
  circle(112,351,6);
  
  //Sun
  noStroke();
  fill(253,237,78);
  circle(384,125,100);
  
  }
  
}

class background5 {
//space + planet, by Jeffrey Huisman, Ig101-B
//description: space; stars, planet and sun
  
  void draw(){
     rectMode(CORNER);
  //main sky
    background(0);
    
  //stars
  noStroke();
  fill(255,255,255);
  circle(33,33,3);
  
  noStroke();
  fill(255,255,255);
  circle(701,55,9);
  
  noStroke();
  fill(255,255,255);
  circle(209,87,1);
  
  noStroke();
  fill(255,255,255);
  circle(556,7,2);
  
  noStroke();
  fill(255,255,255);
  circle(619,93,7);
  
  noStroke();
  fill(255,255,255);
  circle(387,55,5);
  
  noStroke();
  fill(255,255,255);
  circle(513,192,8);
  
  noStroke();
  fill(255,255,255);
  circle(85,13,3);
  
  noStroke();
  fill(255,255,255);
  circle(700,77,3);
  
  noStroke();
  fill(255,255,255);
  circle(100,83,1);
  
  noStroke();
  fill(255,255,255);
  circle(666,333,5);
  
  noStroke();
  fill(255,255,255);
  circle(10,257,5);
  
  noStroke();
  fill(255,255,255);
  circle(420,369,5);
  
  noStroke();
  fill(255,255,255);
  circle(321,321,4);
  
  noStroke();
  fill(255,255,255);
  circle(112,351,6);
  
  //Sun
  noStroke();
  fill(253,237,78);
  circle(275,95,35);
  
  //meteor
  if (currentGameState == 5) {
    metPosX = metPosX + 1;
    metPosY = 195;
  }
  
  if (metPosX >= width + 1500) {
      metPosX = -50;
   }
  

  
  stroke(255,165,0);
  strokeWeight(3);
  fill(253,237,78);
  triangle(metPosX,metPosY+4,metPosX,metPosY-4,metPosX-69,metPosY);
  
  noStroke();
  fill(169,169,169);
  circle(metPosX,metPosY+1,12);
  
  //planet
  noStroke();
  fill(255,165,114);
  circle(375,235,150);
  
  noStroke();
  fill(255,150,100);
  circle(375,195,35);
  
  noStroke();
  fill(255,150,100);
  circle(415,250,17);
  
  noStroke();
  fill(255,150,100);
  circle(320,255,21);
  
  noStroke();
  fill(255,150,100);
  circle(368,278,15);
  
  noStroke();
  fill(255,150,100);
  circle(410,214,25);
  
  //black hole
  stroke(255,165,0);
  strokeWeight(1);
  fill(0);
  circle(318,130,18);
  
  }
  
}

class background6{
  boolean repositionMet = true;
  //repositionMet is the variable used to reposition the meteorite in the background after level 5.
  
  void draw(){
     rectMode(CORNER);
  //main sky
    background(254,216,177);
    
    //outer layer
   noStroke();
   fill(#fd9b59);
   circle(384,216,1532);
   
   //high layer
   noStroke();
   fill(254,216,200);
   circle(384,216,1200);
   
   //low layer
   noStroke();
   fill(254,216,177);
   circle(384,216,1000);
    
    
  //stars
  noStroke();
  fill(255,255,255);
  circle(33,33,5);
  
  noStroke();
  fill(255,255,255);
  circle(701,55,5);
  
  noStroke();
  fill(255,255,255);
  circle(209,87,5);
  
  noStroke();
  fill(255,255,255);
  circle(556,7,5);
  
  noStroke();
  fill(255,255,255);
  circle(619,93,5);
  
  noStroke();
  fill(255,255,255);
  circle(387,55,5);
  
  noStroke();
  fill(255,255,255);
  circle(513,192,5);
  
  noStroke();
  fill(255,255,255);
  circle(85,13,5);
  
  noStroke();
  fill(255,255,255);
  circle(700,77,5);
  
  noStroke();
  fill(255,255,255);
  circle(100,83,5);
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
  
  noStroke();
  fill(255,255,255);
  circle(random(0,768),random(-1368,0),random(1,7));
    
  //Sun
  noStroke();
  fill(238,232,170);
  circle(384,-650,200);
  
  noStroke();
  fill(254,216,177);
  rect(284,-560,200,12);
  
  noStroke();
  fill(254,216,177);
  rect(284,-575,200,10);
  
  noStroke();
  fill(254,216,177);
  rect(284,-590,200,8);
  
  noStroke();
  fill(254,216,177);
  rect(284,-605,200,6);
  
  noStroke();
  fill(254,216,177);
  rect(284,-620,200,4);
  
  //meteor
  if (currentGameState == 6) {
    if (repositionMet) {
      metPosX = -50;
      repositionMet = false;
    }

    metPosX += 2;
    metPosY = 169;
    
    if (metPosX >= width + 1000) {
      metPosX = -50;
    }
  }
  
  stroke(255,165,0);
  strokeWeight(3);
  fill(253,237,78);
  triangle(metPosX,metPosY+4,metPosX,metPosY-4,metPosX-69,metPosY);
  
  noStroke();
  fill(100,100,100);
  circle(metPosX,metPosY,12);
  
  //mountains
  stroke(188,42,58);
  strokeWeight(3);
  fill(255, 148, 102);
  triangle(0,285,55,235,150,285);
  
  stroke(188,42,58);
  strokeWeight(3);
  fill(255, 148, 102);
  triangle(-5,285,-5,216,75,285);
  
  stroke(188,42,58);
  strokeWeight(3);
  fill(255, 148, 102);
  triangle(150,235,200,285,300,235);
  
  stroke(188,42,58);
  strokeWeight(3);
  fill(255, 148, 102);
  triangle(250,285,350,195,450,285);
  
  stroke(188,42,58);
  strokeWeight(3);
  fill(255, 148, 102);
  triangle(50,285,125,195,125,285);
  
  stroke(188,42,58);
  strokeWeight(3);
  fill(255, 148, 102);
  triangle(125,195,125,285,200,285);
  
  stroke(188,42,58);
  strokeWeight(3);
  fill(255, 148, 102);
  triangle(200,285,300,235,310,285);
  
  stroke(188,42,58);
  strokeWeight(3);
  fill(255, 148, 102);
  triangle(360,245,415,285,475,215);
  
  stroke(188,42,58);
  strokeWeight(3);
  fill(255, 148, 102);
  triangle(415,285,450,195,485,285);
  
  stroke(188,42,58);
  strokeWeight(3);
  fill(255, 148, 102);
  triangle(415,285,555,175,555,295);
    
  stroke(188,42,58);
  strokeWeight(3);
  fill(255, 148, 102);
  triangle(555,175,600,295,600,145);
  
  stroke(188,42,58);
  strokeWeight(3);
  fill(255, 148, 102);
  triangle(600,195,600,295,675,235);
  
  stroke(188,42,58);
  strokeWeight(3);
  fill(255, 148, 102);
  triangle(555,175,555,295,650,290);
  
  stroke(188,42,58);
  strokeWeight(3);
  fill(255, 148, 102);
  triangle(600,285,700,215,715,285);
  
  stroke(188,42,58);
  strokeWeight(3);
  fill(255, 148, 102);
  triangle(650,285,725,205,799,285);
  
  stroke(188,42,58);
  strokeWeight(3);
  fill(255, 148, 102);
  triangle(700,282,790,300,790,216);
  
  
  
  //floor
  noStroke();
  fill(229, 87, 25);
  rect(0,282,768,282);
  
  
  
  //grid
  stroke(188,42,58);
  strokeWeight(1);
  line(0,282,768,282);
  
  stroke(188,42,58);
  strokeWeight(1);
  line(0,292,768,292);
  
  stroke(188,42,58);
  strokeWeight(1);
  line(0,302,768,302);
  
  stroke(188,42,58);
  strokeWeight(1);
  line(0,312,768,312);
  
  stroke(188,42,58);
  strokeWeight(2);
  line(0,332,768,332);
  
  stroke(188,42,58);
  strokeWeight(2);
  line(0,352,768,352);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(0,377,768,377);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(0,402,768,402);
  
  stroke(188,42,58);
  strokeWeight(4);
  line(0,427,768,427);
  
  //grid
  stroke(188,42,58);
  strokeWeight(3);
  line(384,432,384,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(484,432,432,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(584,432,480,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(684,432,528,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(784,432,576,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(884,432,624,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(984,432,672,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(1084,432,720,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(284,432,336,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(184,432,288,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(84,432,240,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(-84,432,192,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(-184,432,144,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(-284,432,96,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(-384,432,48,282);
  
  }
  
}
  

class background7 {
//still pretty basic retro/sovjet synth background, by Jeffrey Huisman, Ig101-B
//description: grid, hills, stars and sun
  
   void draw(){
     rectMode(CORNER);
  //main sky
    background(254,216,200);
    
  //stars
  noStroke();
  fill(255,255,255);
  circle(33,33,5);
  
  noStroke();
  fill(255,255,255);
  circle(701,55,5);
  
  noStroke();
  fill(255,255,255);
  circle(209,87,5);
  
  noStroke();
  fill(255,255,255);
  circle(556,7,5);
  
  noStroke();
  fill(255,255,255);
  circle(619,93,5);
  
  noStroke();
  fill(255,255,255);
  circle(387,55,5);
  
  noStroke();
  fill(255,255,255);
  circle(513,192,5);
  
  noStroke();
  fill(255,255,255);
  circle(85,13,5);
  
  noStroke();
  fill(255,255,255);
  circle(700,77,5);
  
  noStroke();
  fill(255,255,255);
  circle(100,83,5);
    
  
  
  //hills
  noStroke();
  fill(255, 148, 102);
  triangle(150,282,225,220,350,282);
  
  noStroke();
  fill(255, 148, 102);
  circle(100,350,300);
  
  noStroke();
  fill(255, 148, 102);
  circle(600,350,300);
  
  noStroke();
  fill(255, 148, 102);
  circle(350,400,400);
  
  noStroke();
  fill(255, 148, 102);
  triangle(700,282,790,300,790,216);
  
  
  //floor
  noStroke();
  fill(229, 87, 25);
  rect(0,282,768,282);
  
  
  
  //grid
  stroke(188,42,58);
  strokeWeight(1);
  line(0,282,768,282);
  
  stroke(188,42,58);
  strokeWeight(1);
  line(0,292,768,292);
  
  stroke(188,42,58);
  strokeWeight(1);
  line(0,302,768,302);
  
  stroke(188,42,58);
  strokeWeight(1);
  line(0,312,768,312);
  
  stroke(188,42,58);
  strokeWeight(2);
  line(0,332,768,332);
  
  stroke(188,42,58);
  strokeWeight(2);
  line(0,352,768,352);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(0,377,768,377);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(0,402,768,402);
  
  stroke(188,42,58);
  strokeWeight(4);
  line(0,427,768,427);
  
  //grid
  stroke(188,42,58);
  strokeWeight(3);
  line(384,432,384,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(484,432,432,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(584,432,480,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(684,432,528,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(784,432,576,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(884,432,624,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(984,432,672,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(1084,432,720,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(284,432,336,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(184,432,288,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(84,432,240,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(-84,432,192,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(-184,432,144,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(-284,432,96,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(-384,432,48,282);
  
  }
  
}

class background8 {
//still pretty basic retro background, by Jeffrey Huisman, Ig101-B
//description: grid, hills, stars and sun
  boolean repositionMet = true;
  //repositionMet is the variable used to reposition the meteorite in the background after level 5.
  
  void draw(){
     rectMode(CORNER);
  //main sky
    background(254,216,177);
    
  //stars
  noStroke();
  fill(255,255,255);
  circle(33,33,5);
  
  noStroke();
  fill(255,255,255);
  circle(701,55,5);
  
  noStroke();
  fill(255,255,255);
  circle(209,87,5);
  
  noStroke();
  fill(255,255,255);
  circle(556,7,5);
  
  noStroke();
  fill(255,255,255);
  circle(619,93,5);
  
  noStroke();
  fill(255,255,255);
  circle(387,55,5);
  
  noStroke();
  fill(255,255,255);
  circle(513,192,5);
  
  noStroke();
  fill(255,255,255);
  circle(85,13,5);
  
  noStroke();
  fill(255,255,255);
  circle(700,77,5);
  
  noStroke();
  fill(255,255,255);
  circle(100,83,5);
    
  //Sun
  noStroke();
  fill(238,232,170);
  circle(384,125,200);
  
  noStroke();
  fill(254,216,177);
  rect(284,200,200,12);
  
  noStroke();
  fill(254,216,177);
  rect(284,185,200,10);
  
  noStroke();
  fill(254,216,177);
  rect(284,170,200,8);
  
  noStroke();
  fill(254,216,177);
  rect(284,160,200,6);
  
  noStroke();
  fill(254,216,177);
  rect(284,150,200,4);
  
  //meteor
  if (currentGameState == 8) {
    if (repositionMet) {
      metPosX = -50;
      repositionMet = false;
    }

    metPosX += 2;
    metPosY = 169;
    
    if (metPosX >= width + 1000) {
      metPosX = -50;
    }
  }
  
  stroke(255,165,0);
  strokeWeight(3);
  fill(253,237,78);
  triangle(metPosX,metPosY+4,metPosX,metPosY-4,metPosX-69,metPosY);
  
  noStroke();
  fill(100,100,100);
  circle(metPosX,metPosY,12);
  
  //mountains
  stroke(188,42,58);
  strokeWeight(3);
  fill(255, 148, 102);
  triangle(0,285,55,235,150,285);
  
  stroke(188,42,58);
  strokeWeight(3);
  fill(255, 148, 102);
  triangle(-5,285,-5,216,75,285);
  
  stroke(188,42,58);
  strokeWeight(3);
  fill(255, 148, 102);
  triangle(150,235,200,285,300,235);
  
  stroke(188,42,58);
  strokeWeight(3);
  fill(255, 148, 102);
  triangle(250,285,350,195,450,285);
  
  stroke(188,42,58);
  strokeWeight(3);
  fill(255, 148, 102);
  triangle(50,285,125,195,125,285);
  
  stroke(188,42,58);
  strokeWeight(3);
  fill(255, 148, 102);
  triangle(125,195,125,285,200,285);
  
  stroke(188,42,58);
  strokeWeight(3);
  fill(255, 148, 102);
  triangle(200,285,300,235,310,285);
  
  stroke(188,42,58);
  strokeWeight(3);
  fill(255, 148, 102);
  triangle(360,245,415,285,475,215);
  
  stroke(188,42,58);
  strokeWeight(3);
  fill(255, 148, 102);
  triangle(415,285,450,195,485,285);
  
  stroke(188,42,58);
  strokeWeight(3);
  fill(255, 148, 102);
  triangle(415,285,555,175,555,295);
    
  stroke(188,42,58);
  strokeWeight(3);
  fill(255, 148, 102);
  triangle(555,175,600,295,600,145);
  
  stroke(188,42,58);
  strokeWeight(3);
  fill(255, 148, 102);
  triangle(600,195,600,295,675,235);
  
  stroke(188,42,58);
  strokeWeight(3);
  fill(255, 148, 102);
  triangle(555,175,555,295,650,290);
  
  stroke(188,42,58);
  strokeWeight(3);
  fill(255, 148, 102);
  triangle(600,285,700,215,715,285);
  
  stroke(188,42,58);
  strokeWeight(3);
  fill(255, 148, 102);
  triangle(650,285,725,205,799,285);
  
  stroke(188,42,58);
  strokeWeight(3);
  fill(255, 148, 102);
  triangle(700,282,790,300,790,216);
  
  
  
  //floor
  noStroke();
  fill(229, 87, 25);
  rect(0,282,768,282);
  
  
  
  //grid
  stroke(188,42,58);
  strokeWeight(1);
  line(0,282,768,282);
  
  stroke(188,42,58);
  strokeWeight(1);
  line(0,292,768,292);
  
  stroke(188,42,58);
  strokeWeight(1);
  line(0,302,768,302);
  
  stroke(188,42,58);
  strokeWeight(1);
  line(0,312,768,312);
  
  stroke(188,42,58);
  strokeWeight(2);
  line(0,332,768,332);
  
  stroke(188,42,58);
  strokeWeight(2);
  line(0,352,768,352);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(0,377,768,377);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(0,402,768,402);
  
  stroke(188,42,58);
  strokeWeight(4);
  line(0,427,768,427);
  
  //grid
  stroke(188,42,58);
  strokeWeight(3);
  line(384,432,384,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(484,432,432,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(584,432,480,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(684,432,528,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(784,432,576,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(884,432,624,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(984,432,672,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(1084,432,720,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(284,432,336,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(184,432,288,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(84,432,240,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(-84,432,192,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(-184,432,144,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(-284,432,96,282);
  
  stroke(188,42,58);
  strokeWeight(3);
  line(-384,432,48,282);
  
  }
  
}
