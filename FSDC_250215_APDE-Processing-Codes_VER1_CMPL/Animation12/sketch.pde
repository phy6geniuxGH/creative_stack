float x, y, z, x1, y1, z1,rev,rev2,adjust,x2,y2,z2;

void setup() {
  size(1080, 1920, P3D);
  frameRate(120);
  //background(0);
  noStroke();
  smooth();
  rectMode(CENTER);
  ellipseMode(CENTER);
  x= width/2;
  y = height/2;
  z= 0;
  x1= 250;
  y1= 500;
  z1=0;
  float g = x + y;
  println(g);
}
void draw() {
  background(0);
  translate(x,y,z);
  //boundsCircle();
  //rev2=millis()/10;
  rev2++;
  //rotateX(radians(map(mouseX,0,width/2,0,360)));
  //rotateX(cos(radians(rev2)));
  rotateX(atan(radians(rev2)));
  rotateY(sin(radians(rev2)));
  rotateZ(cos(radians(rev2)));
  scale(atan(radians(rev2)));
  //fill(map(250*sin(rev2/17),20,255,100,255),map(255*cos(rev2/27),20,255,100,255),map(255*sin(rev2/35),20,255,100,255));
  fill(90*sin(rev2/17) + 150 ,90*cos(rev2/27) + 150, 90*sin(rev2/35)+150);
  layer7();
  layer5();
  layer3();
  layer1();
  layer0();
  layer2();
  layer4();
  layer6();
  layer8();
}

void boxArrays(){
  for (int i = -width; i<width; i+=150){
    for(int j = -height; j<height; j+=150){
      rect(i,j,5,5);
    }
  }
}

void layer0(){
  //int zA = valueZ(z);
  pushMatrix();
  translate(0,0,z);
  boxArrays();
  popMatrix();
  
}
void layer1(){
  pushMatrix();
  translate(0,0,z+100);
  boxArrays();
  popMatrix();
  
}

void layer2(){
  pushMatrix();
  translate(0,0,z-100);
  boxArrays();
  popMatrix();
  
}
void layer3(){
  pushMatrix();
  translate(0,0,z+200);
  boxArrays();
  popMatrix();
  
}
void layer4(){
  pushMatrix();
  translate(0,0,z-200);
  boxArrays();
  popMatrix();
  
}
void layer5(){
  pushMatrix();
  translate(0,0,z+300);
  boxArrays();
  popMatrix();
  
}
void layer6(){
  pushMatrix();
  translate(0,0,z-300);
  boxArrays();
  popMatrix();
  
}
void layer7(){
  pushMatrix();
  translate(0,0,z+400);
  boxArrays();
  popMatrix();
  
}
void layer8(){
  pushMatrix();
  translate(0,0,z-400);
  boxArrays();
  popMatrix();
  
}
/*
int valueZ(int dz){
  //for(dz = 0; dz <= 1000; dz+=200){
  while (dz <= 1000){
    dz+=200;
  }
  return dz;
}*/