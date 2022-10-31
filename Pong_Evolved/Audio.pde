//Audio class by Jeffrey Huisman, Ig-101-B
class AudioSystem {
  
  void playsong1(){
   if (!song1.isPlaying()) {
    song1.loop();
   }
  }
  
  void playsong2(){
   if (!song2.isPlaying()) {
    song2.loop();
   }
  }
  
  void playsong3(){
   if (!song3.isPlaying()) {
    song3.loop();
   }
  }
  
  void playsong4(){
   if (!song4.isPlaying()) {
    song4.loop();
   }
  }
  
  /*void playsong5(){
   if (!song5.isPlaying()) {
    song5.loop();
   }
  }*/
  
  //stop music
  
  void stopsong2() {
   if (song2.isPlaying()) {
      song2.stop();
    }
  }
  
  void stopsong1() {
  if (song1.isPlaying()) {
      song1.stop();
    }
  }
  
  void stopsong3() {
    if (song3.isPlaying()) {
      song3.stop();
    }
   } 
    
  void stopsong4() {
  // if (song4.isPlaying()) {
     song4.stop();
   // }
   }
    
   /*void stopsong5() {
    if (song5.isPlaying()) {
      song5.stop();
    }
   }*/
   
   void explosion(){
    if(!Boom.isPlaying()){
     Boom.play();
    }
   }
   
   void hit(){
    if (!hit.isPlaying()){ 
     hit.play();
    }
   }
   
   void Ow(){
    if (!Ow.isPlaying()){
     Ow.play();
    }
   }
   
   void Powershot(){
    if (!Woosh.isPlaying()){
     Woosh.play();
    }
   }
   
   void ButtonPressed(){
    if(!Pressed.isPlaying()){
     Pressed.play();
    }
   }
   
   void Attack(){
    if(!Attack.isPlaying()){ 
     Attack.play();
    }
   }
   
   void Growl(){
     Growl.play();
   }
   
   void Methit(){
    if(!MetBoom.isPlaying()){
     MetBoom.play();
    }
   }
}
