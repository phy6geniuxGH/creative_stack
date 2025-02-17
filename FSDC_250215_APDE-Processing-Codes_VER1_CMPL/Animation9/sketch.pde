float x,x2;
float y,y2;
float easing = 0.05;
int offset = 10;
int z;

void setup(){
  size(1080,1920,P2D);
  smooth();
  x = width/2;
  y = height/2;
  z = 100;
  stroke(255);
  
}

void draw(){
  background(0);
  if (mouseX >= x && mouseY >= y ){
    x+=2;
    y+=2;
    offset = -z;
  }
  if (mouseX < x && mouseY < y){
    x-=2;
    y-=2;
    offset = z;
  }if (mouseX >= x && mouseY < y ){
    x+=2;
    y-=2;
    offset = -z;
  }
  if (mouseX < x && mouseY >= y){
    x-=2;
    y+=2;
    offset = z;
  }
  line(x,0,x, height);
  line(0,y,width,y);
  /*line(mouseX, mouseY, mouseX+offset, mouseY - offset);
  line(mouseX, mouseY, mouseX+offset, mouseY + offset);
  line(mouseX, mouseY, mouseX+offset*3,mouseY);
  */
  fill(255);
  x2 += (mouseX - x2)*easing;
  y2 += (mouseY - y2)*easing;
  fill(245,242,36);
  ellipse(x2, y2, 50,50);
  orbital1();
  orbital2();
  
}

void orbital1(){
  pushMatrix();
  translate(x2+offset,y2);
  rotate(radians(0));
  fill(255,0,0);
  ellipse(offset*sin(radians(x*3)), (2*offset)*cos(radians(x*3)), 30,30);
  popMatrix();
  
}
void orbital2(){
  pushMatrix();
  translate(x2,y2+offset);
  fill(255,0,0);
  ellipse(100*sin(radians(x*5)), 200*cos(radians(x*5)), 30,30);
  popMatrix();
}