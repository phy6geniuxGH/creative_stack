float x, y, z, x1, y1, z1;
//int radius;
float increment;
//float[] coswave = new float[width];

void setup() {
  size(1080, 1920, P3D);
  smooth();
  //background(0);
  noFill();
  x = width/2;
  y = height/2;
  z = 0;
  x1=0;
  y1=0;
  z1=0;
  //radius = 0;
  ellipseMode(RADIUS);
  /*
  for (int i = 0; i < width; i++) {
   float amount = map(i, 0, width, 0, PI);
   coswave[i] = abs(cos(amount));
   }*/
  //circleFunction();
}

void draw() {
  background(0);
  translate(x, y, z);
  rotateX(radians(75));
  stroke(255);
  ellipse(x1, y1, 500, 500);
  circleFunction();
}
void circleFunction() {
  increment++;
  for (int i = 0; i < width; i+=100*(sin(radians(increment)))) {
    //stroke(coswave[i]*255);
    pushMatrix();
    translate(x1,y1,z1+100*sin(radians(increment)));
    stroke(255*cos(radians(i)));
    ellipse(x1, y1, i, i);
    popMatrix();
  }
}
