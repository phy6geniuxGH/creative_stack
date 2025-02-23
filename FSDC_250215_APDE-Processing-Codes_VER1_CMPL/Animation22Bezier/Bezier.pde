/**
 * Bezier.
 * 
 * The first two parameters for the bezier() function specify the 
 * first point in the curve and the last two parameters specify 
 * the last point. The middle parameters set the control points 
 * that define the shape of the curve.
 */
int M;


void setup() {
  size(1080, 1920, P3D); 
  stroke(255);
  noFill();
  smooth();
  
}
void draw() {
  background(0);
  M = millis();
  translate(width/2, height/2);
  scale(0.8);
  rotateX(radians(M/10));
  rotateY(radians(M/20));
  besselFunc();
}

void besselFunc() {
  for (int i = -500; i < width; i += 50) {
    bezier(90-(i/2.0), 20+i, 210, 10, 220, 150, 120-(i/8.0), 150+(i/4.0));
  }
}
