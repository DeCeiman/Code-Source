//Particle effects made by Jeffrey Huisman, Ig-101-B
class ParticleSystem{
  ArrayList<BallParticle> particles;
  ArrayList<PowershotLeftTrailParticle> particles2;
  ArrayList<PowershotRightTrailParticle> particles3;
  ArrayList<BossParticle> particles4;
  ArrayList<SharpBallParticle> particles5;
  ArrayList<CircleParticle> particles6;
  ArrayList<BorderParticle> particles7;
  PVector origin;
  PVector exorigin;
  
  ParticleSystem(){
    origin = new PVector(ballX,ballY);
    exorigin = new PVector(mineX,mineY);
    particles = new ArrayList<BallParticle>();
    particles2 = new ArrayList<PowershotLeftTrailParticle>();
    particles3 = new ArrayList<PowershotRightTrailParticle>();
    particles4 = new ArrayList<BossParticle>();
    particles5 = new ArrayList<SharpBallParticle>();
    particles6 = new ArrayList<CircleParticle>();
    particles7 = new ArrayList<BorderParticle>();
  }
  
  void addParticle1() {
    particles.add(new BallParticle(origin));
  }
  
  void addParticle2(){
    particles2.add(new PowershotLeftTrailParticle(origin)); 
  }
  
  void addParticle3(){
    particles3.add(new PowershotRightTrailParticle(origin)); 
  }
  
  void addParticle4(){
    particles.add(new BossParticle(origin)); 
  }
  
  void addParticle5(){
    particles.add(new SharpBallParticle(exorigin));
  }
  
  void addParticle6(){
    particles.add(new CircleParticle(origin)); 
  }
  
  void addParticle7(){
    particles7.add(new BorderParticle(origin)); 
  }
  
  void applyForce1(PVector force){
   for (BallParticle p : particles4){
    p.applyForce(force); 
   }
  }
  
  void applyForce2(PVector force){
   for (PowershotLeftTrailParticle p : particles2){
     p.applyForce(force);
   }
  }
  
  void applyForce3(PVector force){
   for (PowershotRightTrailParticle p : particles3){
     p.applyForce(force);
   }
  }
  
  void applyForce4(PVector force){
   for (BossParticle p : particles4){
    p.applyForce(force); 
   }
  }
  
  void run1(){
   for (int i = particles.size()-1; i >= 0; i--){
     BallParticle p = particles.get(i);
     p.run();
     if (p.isDead()){
       particles.remove(i);
     }
    }
  }

void run2(){
   for (int i = particles2.size()-1; i >= 0; i--){
     PowershotLeftTrailParticle p = particles2.get(i);
     p.run();
     if (p.isDead()){
       particles2.remove(i);
     }
    }
  }
  
  void run3(){
   for (int i = particles3.size()-1; i >= 0; i--){
     PowershotRightTrailParticle p = particles3.get(i);
     p.run();
     if (p.isDead()){
       particles3.remove(i);
     }
    }
  }
  
  void run4(){
   for (int i = particles4.size()-1; i >= 0; i--){
     BossParticle p = particles4.get(i);
     p.run();
     if (p.isDead()){
       particles4.remove(i);
     }
    }
  }
  
  void run5(){
   for (int i = particles5.size()-1; i >= 0; i--){
     SharpBallParticle p = particles5.get(i);
     p.run();
     if (p.isDead()){
       particles5.remove(i);
     }
    }
  }
  
  void run6(){
   for (int i = particles6.size()-1; i >= 0; i--){
     CircleParticle p = particles6.get(i);
     p.run();
     if (p.isDead()){
       particles6.remove(i);
     }
    }
  }
  
  void run7(){
   for (int i = particles7.size()-1; i >= 0; i--){
     BorderParticle p = particles7.get(i);
     p.run();
     if (p.isDead()){
       particles7.remove(i);
     }
    }
  }
}
