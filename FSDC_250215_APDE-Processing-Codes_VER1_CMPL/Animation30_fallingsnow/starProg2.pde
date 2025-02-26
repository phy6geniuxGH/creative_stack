import processing.opengl.*;
star[] starfield = new star[3000];
float speed;

void setup() {
  size(1080, 1920,P2D);
  //  background(0);
  speed = 2.5;
  for (int i = 0; i<starfield.length; i++) {
    starfield[i] = new star();
  }
}
void draw() {
  translate(width/2, height/2);
  background(0);
  for (int i = 0; i<starfield.length; i++) {
    starfield[i].update();
    starfield[i].display();
  }
}
