import processing.opengl.*;

float x1, x2, x3, mX, mY, zoomX, zoomY, counter;
int parSize, sepDist, parN;
float maxScaleLimit, minScaleLimit;
float counter2;

void setup() {
  size(1080, 1920, P3D);
  x1 = width/2;
  x2 = height/2;
  x3 = 0;
  parSize = 1;
  sepDist = 5;
  parN = 10;
  minScaleLimit =0.5;
  maxScaleLimit=4.0;
}

void draw() {
  background(0);
  translate(x1, x2, x3);
  mX = map(mouseX, -x1, x1, 0, 360);
  mY = map(mouseY, -x2, x2, 0, 360);
  zoomX = map(mX, 0, 360, minScaleLimit, maxScaleLimit);
  zoomY = map(mY, 0, 360, minScaleLimit, maxScaleLimit);
  if (mX >10) {
    scale(zoomX);
  }
  if (mY>10) {
    scale(zoomY);
  }
  
  counter++;
  //counter2= pow(counter, 2);
  //counter2*=10;
  for (int z = -parN; z <= parN; z=z+sepDist) {

    pushMatrix();
    rotateX(radians(mX*sin(radians(counter))));
    rotateY(radians(mY*cos(radians(counter))));
    translate(0, 0, z);

    for (int y = -parN; y <= parN; y=y+sepDist) {
      for (int x = -parN; x <= parN; x=x+sepDist) {
        strokeWeight(parSize);
        stroke(0, 255, 0,150+75*cos(radians(counter)));
        point(x, y);
      }
    }
    popMatrix();

    pushMatrix();
    rotateX(radians(mX*cos(radians(counter))));
    rotateY(radians(mY*sin(radians(counter))));
    translate(0, 0, z);
    for (int y = -parN; y <= parN; y=y+sepDist) {
      for (int x = -parN; x <= parN; x=x+sepDist) {
        strokeWeight(parSize);
        stroke(255, 0, 0, 150+counter*sin(radians(counter)));
        point(x,y);
      }
    }
    popMatrix();
  }
}
