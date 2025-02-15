float x,y,z,x1,y1,z1,rev,rotX,rotY,rotZ;
float xx, yy, px,py, x2,y2,z2, rev2, rev3;
float easing = 0.05;
int colorRGB;
void setup(){
  size(1080,1920,P3D);
  frameRate(240);
  smooth();
  x = width/2;
  y = height/2;
  z = 0;
  x1 = width/2;
  y1 = height/2;
  z1 = 0;
  x2 = width/2;
  y2 = height/2;
  z2 = 0;
  noStroke();
  //background(0);
  lights();
}
void draw(){
  background(0);
  translate(10,10,10);
  println(frameCount);
  rotateX(radians(50));
  Sun();
  randomObject();
  Mercury();
  MercuryMoon();
  sampleSphere();
  
}

void Sun(){
  pushMatrix();
  translate(x,y,z);
  //fill(random(frameCount % 10),random(frameCount % 10),random(frameCount % 10));
  spotLight(255,200,150, width/2, height/2, 2000, 0, 0, -1, PI/4, 2);
  sphere(50);
  popMatrix();
}

void randomObject(){
  pushMatrix();
  translate(x1,y1,z1);
  rev += 20*random(cos(rev));
  //rev = map(rev,0,height-1,0,360);
  //rev = constrain(rev, 0,360);
  float targetX = 300*sin(radians(rev));
  float targetY = 300*cos(radians(rev));
  xx += (targetX - xx)*easing;
  yy += (targetY - yy)*easing;
  //fill(255,120,70);
  float weight = dist(px,py,xx,yy);
  spotLight(0,200,150, width/2, height/2, 2000, 0, 0, -1, PI/4, 2);
  //ellipse(xx, yy,weight/25,weight/25);
  sphere(10);
  popMatrix();
}

void Mercury(){
  pushMatrix();
  translate(x2+100*sin(radians(rev2)),y2+300*cos(radians(rev2)),z2);
  rev2++;
  //fill(155,155,120);
  spotLight(0,200,150, width/2, height/2, 2000, 0, 0, -1, PI/4, 2);
  sphere(20);
  //ellipse(300*sin(radians(rev2)) , 300*cos(radians(rev2)) ,7,7);
  popMatrix();
}
void MercuryMoon(){
  pushMatrix();
  translate(x,y,z);
  rev3++;
  fill(255,0,0);
  ellipse(300*sin(radians(rev3*3)) , 300*cos(radians(rev3*3)) ,7,7);
  popMatrix();
}
void sampleSphere(){

pushMatrix();
translate(x+250*sin(radians(rev2/4)),y+250*cos(radians(rev2/4)),z);
//ambientLight(100,255,255);
spotLight(255, 255, 0, width/2, height/2, 2000, 0, 0, -1, PI/4, 2);
sphere(15);
popMatrix();
}