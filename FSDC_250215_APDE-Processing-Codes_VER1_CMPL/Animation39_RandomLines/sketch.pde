float x1, x2, random1, random2;


void setup(){
  size(1080, 1920);
  smooth();
  strokeWeight(3);
  stroke(0);
  x1 = width/2;
  x2 = height/2;
  
}

void draw(){
  translate(x1, x2);
  scale(1, -1);
  background(175);
  random1 = x1*random(-1, 1);
  random2 = x2*random(-1, 1);
  line(-x1, random1, x1, random1);
}