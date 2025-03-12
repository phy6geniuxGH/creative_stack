float x1, x2;
float v, inc, n, i;

void setup() {
  fullScreen(LANDSCAPE);
  frameRate(120);
  background(150);

  x1 = 0;
  x2 = width/2;
  rotate(radians(90));
  scale(1, -1);
  translate(x1, x2);

  line(0, 0, height, 0);
  v = 0.0;
  inc = 0.1;
  fill(0);
  //noStroke();
  //noiseSeed(0);
}

void draw() {
  rotate(radians(90));
  scale(1, -1);
  translate(x1, x2);

  line(0, 0, height, 0);
  i+=0.5;
  n  = noise(v)*250;
  rect(i, n-100, 3, 20);
  ellipse(i,n,10,10);
  v += inc;
}
