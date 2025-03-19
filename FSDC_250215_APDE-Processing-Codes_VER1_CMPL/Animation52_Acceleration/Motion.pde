class Motion2D{
  PVector position;
  PVector velocity;
  PVector acceleration;
  float factor;
  float terminal;
  Motion2D(float x, float y, float vx, float vy,
  float ax, float ay, float tfactor, float tv){
    position = new PVector(x,y);
    velocity = new PVector(vx, vy);
    acceleration = new PVector(ax, ay);
    factor = tfactor;
    terminal = tv;
    
  }
  void calculate(){
    PVector mouse = new PVector(mouseX, mouseY);
    mouse.sub(position);
    mouse.setMag(2.0);
    acceleration = mouse;
    acceleration.mult(factor);
    velocity.add(acceleration);
    position.add(velocity);
    velocity.limit(terminal);
    
  }
  void bounds(){
    if (position.x > width){
      position.x = 0;
    } else if(position.x < 0){
      position.x = width;
    }
    if (position.y > height){
      position.y = 0;
    } else if(position.y < 0){
      position.y = height;
    }
  }
  void display(float textAdjust){
    fill(255);
    noStroke();
    ellipse(position.x, position.y, 10,10);
    textSize(20);
    fill(0,255,0);
    text("pV = " + "(" + round(position.x)+ "," + round(position.y) +")",100, 20+ textAdjust);
    text("vV = " + "(" + round(velocity.x)+ "," + round(velocity.y) +")",100, 40+ textAdjust);
    text("aV = " + "(" + round(acceleration.x)+ "," + round(acceleration.y) +")", 100, 60 + textAdjust);
    
  }
}