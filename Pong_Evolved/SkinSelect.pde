class skinSelect{

  void skinselectscreen(){
   background(0);
 
   //rectMode
   rectMode(CORNER);
 
   //SKINSELECT title
   textSize(50);
   fill(255);
   text("SKIN SELECTOR", 192, 50);
 
   //upperborder
   stroke(255);
   strokeWeight(3);
   line(100,75,668,75);
 
   //outline1
   stroke(255);
   strokeWeight(3);
   noFill();
   rect(50,100,186,125);
 
   //image1
   //name1
   textSize(40);
   fill(255);
   text("Retro", 60,250);
   //description1
   textSize(40);
   fill(255);
   text("Just like old pong", 60,300);
 
   //outline2
   stroke(255);
   strokeWeight(3);
   noFill();
   rect(286,100,186,125);
 
   //image2
   //name2
   textSize(40);
   fill(255);
   text("Synthwave", 296,250);
   //description2
   textSize(40);
   fill(255);
   text("Synthwave and sovietwave in one.", 296,300);
 
   //outline3
   stroke(255);
   strokeWeight(3);
   noFill();
   rect(522,100,186,125);
 
   //image3
   //name3
   textSize(40);
   fill(255);
   text("Nature", 533,250);
   //description3
   textSize(40);
   fill(255);
   text("How beautiful, how relaxing. Nature.", 533,300);
 
   //selectbutton
   textSize(50);
   fill(255);
   text("SELECT", 290, 410);
 
   //arrowLeft
   textSize(50);
   fill(255);
   text("<", 225,410);
 
   //arrowRight
   textSize(50);
   fill(255);
   text(">", 485,410);
 
   //lowerborder
   stroke(255);
   strokeWeight(3);
   line(100,357,668,357);
 
   println(skinid);
 
   if (skinid < 1);
      skinid = 3;
       
   if (skinid > 3);
      skinid = 1; 
       
   if (skinid == 1);
     skinid1 = true;
     
   if (skinid == 2);
     skinid2 = true;
     
   if (skinid == 3);
     skinid3 = true;
 
 //outline for selected cosmetics
    if (skinid2 == true){
       stroke(255,255,0);
       strokeWeight(3);
       noFill();
       rect(284,98,191,130);
   } else if (skinid1 == true){
       stroke(255,255,0);
       strokeWeight(3);
       noFill();
       rect(48,98,191,130);
   } else {
       stroke(255,255,0);
       strokeWeight(3);
       noFill();
       rect(520,98,191,130);
    }
  }   
} 
