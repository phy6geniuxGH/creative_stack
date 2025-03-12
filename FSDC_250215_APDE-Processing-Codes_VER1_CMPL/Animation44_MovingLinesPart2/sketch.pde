float x1,x2,x,y,px,py,counter,colorValue;

void setup(){
  fullScreen();
  frameRate(10);
  //background(0);
  x1 = width/2;
  x2 = height/2;
  px = 0;
  py = 0;
  
  colorMode(HSB);
  
}

void draw(){
  strokeWeight(25);
  
  
  counter+=30;
  translate(x1,x2);
  scale(1, -1);
  background(0);
  
  x = 300*cos(radians(counter*7));
  y = 300*sin(radians(counter*5));
  
  colorValue = map(x, -350, 350, 0, 255);
  
  stroke(int(random(colorValue)), 255, 255);
  line(px, py, x,y);
  //line(0, 0, x,y);
  
  
  fill(0);
  stroke(0);
  ellipse(px,py, 100,100);
  
  px = x;
  py = y;
  
  //line(x, y, px,py);
  
  fill(0);
  stroke(0);
  ellipse(px,py, 100, 100);
  
  fill(0);
  stroke(255);
  ellipse(0,0, 200, 200);
  
  pushMatrix();
  rotate(radians(counter));
  stroke(0);
  strokeWeight(1);
  arc(0,0, 200, 200, 0, PI+PI/1.5);
  popMatrix();
  
}