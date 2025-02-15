float x;
float y;
float z;
float pi = 3.141592;

void setup(){
  size(1080, 1920, P3D);
  smooth();
  frameRate(60);
  x = width/2;
  y = height/2;
  z = 0;
  rectMode(CENTER);
  strokeWeight(10);
}
void draw(){
  translate(x,y,z);
  background(0);
  Rect();
  Ellipse();
}

void Rect(){
  if(mouseX < width/2){
    rotateX(map(mouseX,0,width,0,180)*pi/180);
    fill(175,0,0,50);
    stroke(255,0,0);
  }
  if(mouseX >= width/2){
    rotateX(map(mouseX,0,width,0,180)*pi/180);
    fill(0,0,175,50);
    stroke(0,0,255);
    
  }
  if(mouseY < height/2){
    if(mouseX < width/2){
      rotateY(map(0,mouseY,width,0,180)*pi/180);
      fill(0,175,0,50);
      stroke(0,255,0);
    } else {
      rotateY(map(0,mouseY,width,0,180)*pi/180);
      fill(0,175,175,50);
      stroke(0,255,255);
    }
  }
  rect (0, 0, 500,500);
  
}
void Ellipse(){
  if(mouseX < width/2){
    rotateX(map(mouseX,0,width,0,180)*pi/180);
    fill(175,0,0,50);
    stroke(255,0,0);
  }
  if(mouseX >= width/2){
    rotateX(map(mouseX,0,width,0,180)*pi/180);
    fill(0,0,175,50);
    stroke(0,0,255);
    
  }
  if(mouseY < height/2){
    if(mouseY < height/2){
      rotateY(map(mouseY,0,height,0,180)*pi/180);
      fill(0,175,0,50);
      stroke(mouseY,mouseX,0);
    } else {
      rotateY(map(mouseY,0,height,0,180)*pi/180);
      fill(0,175,175,50);
      stroke(0,mouseY,mouseX);
    }
  }
  ellipse(0,0, 500,500);
}