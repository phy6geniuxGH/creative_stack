float x1, x2, rotCoeff;

void setup() {
  fullScreen();
  //size(1080,1920);
  smooth();
  background(0);
  x1 = width/2;
  x2 = height/2;
  rotCoeff= 270;
  translate(x1, x2);
  scale(1, -1);
  pushMatrix();
  rotate(radians(rotCoeff));
  float radius = 0.15;
  float cx = 0;
  float cy = 0;
  float px = cx;
  float py = cy;
  float deg1 = 1;
  float scalar= 1;
  colorMode(HSB);
  strokeWeight(4);
  for (int deg = 0; deg < 360*500; deg += 150) {
    deg1 += 1*scalar;
    stroke(deg1, 255, 255);
    float angle = radians(deg);
    float x = cx + (cos(angle)*radius);
    float y = cy + (sin(angle)*radius);
    line(px, py, x, y);
    radius*=1.01;
    px = x;
    py = y;
    if (deg1 >= 25 || deg1 <= 1) {
      scalar = -scalar;
    }
  }
  /*
  float diameter = 90;
  float colorCoeff = 20;
  float deltaD = 5;
  float layer = 10;
  for (float i = 0; i < layer; i+=2) {
    fill(255-i*colorCoeff);
    stroke(255-i*colorCoeff);
    ellipse(cx, cy, diameter-i*deltaD, diameter-i*deltaD);
  }
  */
  popMatrix();
}

void draw() {
  
}
