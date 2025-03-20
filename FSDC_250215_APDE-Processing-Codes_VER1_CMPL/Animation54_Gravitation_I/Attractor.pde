class Attractor {
  PVector location;
  float mass;
  float G;
  PVector dragOffset = new PVector(0.0,0.0);
  float sign;
  Attractor(){
    
    location = new PVector(0,0);
    mass = 20;
    G = 5;
    dragOffset = new PVector(0.0,0.0);
    sign = 1;
  } 
  PVector attract(Motion mover){
    
    //Direction of the force
    PVector force = PVector.sub(location, mover.location);
    float d  = force.mag();
    d = constrain(d, 5,25);
    force.normalize();
    
    //Magnitude of the force
    float strength = (G*mass*mover.mass)/(d*d);
    //Putting magnitude and direction together
    force.mult(sign*strength);
    return force;
  }
  void display() {
    strokeWeight(5);
    stroke(175,175,100);
    fill(155,255,150);
    ellipse(location.x,location.y, mass*2, mass*2);
  }
}
    
class Liquid {
  
  float c,R,G,B;
  float x,y,w,h;
  Liquid(float x_, float y_, float w_, float h_,
         float c_, float R_, float G_, float B_){
           x = x_;
           y = y_;
           w = w_;
           h = h_;
           c = c_;
           R = R_;
           G = G_;
           B = B_;
  }
     
     
  void display(){
    noStroke();
    fill(R,G,B);
    rect(x,y,w,h);
    
  }
  
  
}

