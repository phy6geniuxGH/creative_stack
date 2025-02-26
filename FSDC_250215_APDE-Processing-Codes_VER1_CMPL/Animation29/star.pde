class star {
  float x;
  float y;
  float z;
  float sx;
  float sy;
  //float speed;

  star() {
    x = random(-width, width);
    y = random(-height, height);
    z = random(0, width);
  }
  void update() {
    z = z - 1;
    sx = map(x/z, 0, width, 0, 500);
    sy = map(y/z, 0, height, 0, 500);
  }
  void display() {
    //translate(width/2, height/2);
    fill(255);
    ellipse(sx, sy, 2, 2);
  }
}
