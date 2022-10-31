//Particle effects made by Jeffrey Huisman, Ig-101-B
class BallParticle{
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  
  BallParticle(PVector l){
   acceleration = new PVector(0,0.05); 
   velocity = new PVector(random(-1,0),random(-3,0));
   location = new PVector(ballX,ballY);
   lifespan = 100.0;
  }
  
  void applyForce(PVector force){
    acceleration.add(force);
  }
  
  void run(){
   update();
   display();
  }
  
  void update(){
   velocity.add(acceleration);
   location.add(velocity);
   acceleration.mult(0);
   lifespan -= 2.0;
  }
  
  void display(){
    stroke(0, lifespan);
    strokeWeight(2);
    fill(44, 4, 82,lifespan);
    ellipse(location.x,location.y,25,25);
  }
  
  boolean isDead(){
   if (lifespan <= 0.0) {
     return true;
   } else {
     return false;
   }
 } 
}

class BorderParticle extends BallParticle{
  
  BorderParticle(PVector l){
    super(l);
  }
  
  void display(){
   fill(#b252a1);
   stroke(0);
   rectMode(CENTER);
   rect(ballX,ballY,16,16);
  }
}

class CircleParticle extends BallParticle{
 
  CircleParticle (PVector l){
    super(l);
  }
  
  void display(){
   fill(123);
   stroke(0);
   circle(location.x,location.y,10);
  }
    
}

class SharpBallParticle extends BallParticle{
 
  SharpBallParticle (PVector l){
   super(l);
   //location = new PVector(mineX,mineY);
  }
  
  void display(){
   rectMode(CENTER);
   fill(#FF8000);
   stroke(0);
   circle(mineX,mineY,random(25));
  }
}

class BossParticle extends BallParticle{
 
  BossParticle (PVector l){
    super(l);
  }
  
  void display(){
   fill(255,lifespan);
   stroke(0,lifespan);
   rect(location.x,location.y,5,5);
  }
}

class PowershotLeftTrailParticle extends BallParticle{
 
  PowershotLeftTrailParticle (PVector l){
    super(l);
  }
  
  void display(){
   fill(255, 255, 0);
   stroke(0);
   circle(ballX,ballY,random(10));
  }
}

class PowershotRightTrailParticle extends BallParticle{
  
  PowershotRightTrailParticle (PVector l){
    super(l);
   }
 
   void display(){
    fill(255,255,0);
    stroke(0);
    circle(ballX,ballY,random(10));
   }
}
