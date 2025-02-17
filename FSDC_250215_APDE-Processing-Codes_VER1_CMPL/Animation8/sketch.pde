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
  ellipse(x2, y2, 50,50);
  pushMatrix();
  translate(x2,y2);
  fill(255,0,0);
  ellipse(50*sin(radians(x)), 50*cos(radians(x)), 20,20);
  fill(0,255,0);
  ellipse(70*cos(radians(y*2)), 70*sin(radians(y*2)), 20,20);
  fill(0,0,255);
  ellipse(90*sin(radians(x*1.5)), 90*cos(radians(x*1.5)), 20,20);
  fill(100,21,49);
  ellipse(110*cos(radians(y*2)), 110*tan(radians(y*2)), 20,20);
  fill(34,125,178);
  ellipse(130*cos(radians(x*1.5)), 130*cos(sin(radians(x*1.5))), 20,20);
  fill(0,255,255);
  ellipse(150*atan(radians(y*2)), 150*tan(radians(y*2)), 20,20);
   fill(178,23,255);
  ellipse(80*cos(sin(radians(y*2))), 80*sin(cos(radians(y*2))), 20,20);
  popMatrix();
  
}