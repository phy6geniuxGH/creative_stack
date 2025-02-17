float x, y, z, x1, y1, z1,rev,rev2;

void setup() {
  size(1080, 1920, P3D);
  frameRate(120);
  //background(0);
  noStroke();
  smooth();
  x= width/2;
  y = height/2;
  z= 0;
  x1= 250;
  y1= 500;
  z1=0;
}
void draw() {
  background(0);
  translate(x,y,z);
  rev2++;
  //rotateX(radians(map(mouseX,0,width/2,0,360)));
  //rotateX(cos(radians(rev2)));
  rotateX(radians(rev2));
  rotateY(radians(rev2));
  scale(cos(radians(rev2)));
  boxEs();
  Spheres();
  
}
void boxEs(){
  pushMatrix();
  rev++;
  translate(x1*cos(radians(rev)),y1*sin(radians(rev)),z1-100);
  rotateZ(radians(rev));
  lights();
  fill(93,57,210);
  box(50);
      pushMatrix();
      translate((x1-100)*cos(radians(rev*3)),(y1-100)*sin(radians(rev*3)),z1-500);
      rotateZ(radians(rev*3));
      lights();
      fill(193,57,210);
      box(25);
            pushMatrix();
            translate((x1-100)*cos(radians(rev*3)),(y1-100)*sin(radians(rev*3)),z1-750);
            rotateZ(radians(rev*3));
            lights();
            fill(193,157,210);
            box(15);
            popMatrix();
      popMatrix();
  popMatrix();
  
}
void Spheres(){
  pushMatrix();
  rev++;
  translate(x1*sin(radians(rev)),y1*cos(radians(rev)),z1+100);
  rotateZ(radians(rev));
  lights();
  fill(50,57,110);
  sphere(50);
      pushMatrix();
      translate((x1-100)*sin(radians(rev*3)),(y1-100)*cos(radians(rev*3)),z1+500);
      rotateZ(radians(rev*3));
      lights();
      fill(18,76,220);
      sphere(25);
            pushMatrix();
            translate((x1-100)*sin(radians(rev*3)),(y1-100)*cos(radians(rev*3)),z1+750);
            rotateZ(radians(rev*3));
            lights();
            fill(168,220,84);
            sphere(15);
            popMatrix();
      popMatrix();
  popMatrix();
}