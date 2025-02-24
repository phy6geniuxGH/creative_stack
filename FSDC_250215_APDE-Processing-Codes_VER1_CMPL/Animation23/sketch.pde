float x,y,z;

void setup(){
  size(1920,1080, P3D);
  orientation(LANDSCAPE);
  background(0);
  smooth();
  noFill();
  strokeCap(ROUND);
  x = width/2;
  y = height/2;
 
}

void draw(){
  z = millis()/50;
  //background(0);
  translate(x,y);
  rotateX(radians(mouseX));
  stroke(255);
  line(-z,-z,z,z);
  
}