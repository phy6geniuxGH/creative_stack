Motion[] ball;
Liquid l;
float vX,vY, rD, Mass, limit, theta;
float sign = 1;

void setup(){
  //fullScreen(P2D);
  size(1080,960,P2D);
  //background(0);
  smooth();
  ball = new Motion[3000];
    
  for(int i = 0; i < ball.length; i++){
    vX = random(-5,5);
    vY = random(-5,5);
    Mass = random(1,2);
    rD = Mass*2;
    limit = 1000;
    ball[i] = new Motion(vX, vY, rD, Mass, limit);
  }
  l = new Liquid(-width/2, height/3, width, height/2, 0.1);

}

void draw(){
  
  translate(width/2,height/2);
  fill(0,50);
  //float cForceX = cos(radians(theta));
  //float cForceY = sin(radians(theta));
  rect(-width/2, -height/2, width, height);
  l.display();
  for(int i = 0; i < ball.length; i++){
    PVector gravity = new PVector(0,0.1);
    gravity.mult(ball[i].mass);
    ball[i].applyForce(gravity);
    
    if(ball[i].isLiquid(l)){
      ball[i].drag(l);
    }
    
    if(mousePressed){
      float mX = map(mouseX, width/4, width/2, -0.1, 0.1);
      PVector wind = new PVector(mX,0);
      wind.mult(sign);
      ball[i].applyForce(wind);
    }
    
    
    if(ball[i].location.y > -height/2 && 
      ball[i].location.x >= 0){
      PVector friction = ball[i].velocity.copy();
      friction.normalize();
      friction.mult(-1);
      
      float mu = 0.1; //coeff of static friction
      float normalForce = 1;
      float frictionMag = mu*normalForce;
      friction.mult(frictionMag);
      ball[i].applyForce(friction);
      
    } else {
      
      PVector friction = ball[i].velocity.copy();
      friction.normalize();
      friction.mult(-1);
      
      float mu = 0.0; //coeff of static friction
      float normalForce = 1;
      float frictionMag = mu*normalForce;
      friction.mult(frictionMag);
      ball[i].applyForce(friction);
      
    }
    
    ball[i].calc();
    ball[i].bounds();
    ball[i].display();
  }
  //theta++;
  
  
}