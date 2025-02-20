float x,y,z,x1,y1,z1,increment;

void setup() {
  background(0);
  size(1080,1920, P3D);
  x = width/2;
  y = height/2;
  z = 0;
  noFill();
  /*translate(x,y,z);
  rotateX(radians(30));
  float[] coswave = new float[width];

  for (int i = 0; i < width; i++) {
    float amount = map(i, 0, width, 0, PI);
    coswave[i] = abs(cos(amount));
  }
  for (int i = 0; i < width; i+=10){
    stroke(255*coswave[i]);
    ellipse(0,0,i,i);
    ellipse(0,0,width*coswave[i], width*coswave[i]);
  }
  */
}

void draw() {
  background(0);
  translate(x,y,z);
  rotateX(radians(20));
  float[] coswave = new float[width];

  for (int i = 0; i < width; i++) {
    float amount = map(i, 0, width, 0, PI);
    coswave[i] = abs(cos(amount));
  }
  for (int i = 0; i < width; i+=20){
    increment++;
    pushMatrix();
    translate(x1,y1,z1 + 1000*sin(radians(increment/36)));
    rotateX(radians(0));
    stroke(255*coswave[i]);
    //ellipse(0,0,i,i);  
      pushMatrix();
      ellipse(0,0,width*coswave[i], width*coswave[i]);
      popMatrix();
    popMatrix();
  }
}
