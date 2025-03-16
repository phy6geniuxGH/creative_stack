Walker w, w2;


float tx = 0;
float ty = 10000;
float incrementX = 0.01;
float incrementY = 0.01;


void setup(){
  frameRate(60);
  size(1080, 1920);
  w = new Walker(tx, ty, incrementX, incrementY);
  w2 = new Walker(ty/2, 1.5*ty, incrementX, incrementY);
  background(0);
  
}

void draw(){
  w.step();
  w2.step();
  w.display();
  w2.display();
  
}