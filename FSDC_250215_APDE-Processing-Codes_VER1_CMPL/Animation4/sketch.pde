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
  x1 = 0;
  y1 = 0;
  z1 = 0;
  x2 = 0;
  y2 = 0;
  z2 = 50;
  noStroke();
  //background(0);
  
}
void draw(){
  background(0);
  translate(x,y,z);
  println(frameCount);
  rotateX(radians(mouseX));
  lights();
  //background(0);
  Sun();
  randomObject();
  Mercury();
  MercuryMoon();
  sampleSphere();
}

void Sun(){
  colorRGB++;
  
  fill(50,random(colorRGB),120);
  ellipse(0,0,100,100);
  
}

void randomObject(){
  
  translate(x1,y1,z1);
  
  rev += 20*random(cos(rev));
  //rev = map(rev,0,height-1,0,360);
  //rev = constrain(rev, 0,360);
  float targetX = 300*sin(radians(rev));
  float targetY = 300*cos(radians(rev));
  xx += (targetX - xx)*easing;
  yy += (targetY - yy)*easing;
  fill(255);
  float weight = dist(px,py,xx,yy);
  ellipse(xx, yy,weight/25,weight/25);
}

void Mercury(){
  translate(x2,y2,z2);
  rev2++;
  fill(155,155,120);
  ellipse(200*sin(radians(rev2)) , 200*cos(radians(rev2)) ,70,70);
  
}
void MercuryMoon(){
  rev3++;
  translate(300*sin(radians(rev3)), 300*cos(radians(rev3))  ,z2);
  fill(255,0,0);
  ellipse(30*sin(radians(rev3*3)) , 30*cos(radians(rev3*3)) ,50,50);
  
}
void sampleSphere(){

pushMatrix();
ambientLight(100,255,255);
fill(255);
sphere(50);
popMatrix();
}