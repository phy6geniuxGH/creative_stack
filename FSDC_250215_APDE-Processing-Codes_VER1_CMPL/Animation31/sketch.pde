float x;
float y;

void setup(){
  size(1080,1920);
  fill(0,76);
  noStroke();
  for(int y=-10; y<=height; y+=10){
    for(int x = -10; x <=width;x+=10){
      ellipse(x + y/8.0, y+ x/8.0, 15 + x/2.0,10);
    }
  }
}

void draw(){
  
  
}