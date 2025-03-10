float x1,x2,x,y,px,py,counter,colorValue;

void setup(){
  fullScreen();
  frameRate(10);
  x1 = width/2;
  x2 = height/2;
  px = 0;
  py = 0;
  strokeWeight(25);
  colorMode(HSB);
  
}

void draw(){
  
  counter+=30;
  translate(x1,x2);
  scale(1, -1);
  background(0);
  
  x = 350*sin(radians(counter));
  y = 350*cos(radians(counter));
  
  colorValue = map(x, -350, 350, 0, 255);
  
  stroke(colorValue, 255, 255);
  line(px, py, x,y);
  //line(0, 0, x,y);
  
  
  fill(0);
  stroke(0);
  ellipse(px,py, 75,75);
  
  px = x;
  py = y;
   
  fill(0);
  stroke(0);
  ellipse(px,py, 75, 75);
  
  fill(0);
  stroke(255);
  ellipse(0,0, 250, 250);
  
  pushMatrix();
  rotate(radians(counter));
  stroke(0);
  arc(0,0, 300,300, 0, PI+PI/1.5);
  popMatrix();
  
}