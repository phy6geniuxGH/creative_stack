float x1,x2, x, y, px, py,xx,yy;
float colorMapX,colorMapY,colorMapZ;
float counter;

void setup(){
  fullScreen();
  background(0);
  frameRate(120);
  x1 = width/2;
  x2 = height/2;
  px = 0;
  py = 0;
  colorMode(HSB);
  strokeWeight(5);
}

void draw(){
  counter+=10;
  //background(0);
  translate(x1,x2);
  scale(1, -1);
  xx = random(random(-x1,x1),random(-x1,x1));
  yy = random(random(-x2,x2), random(-x2,x2));
  x = counter/10*cos(radians(counter));
  y = counter/10*sin(radians(counter));
  colorMapX = map(x,-x1,x1, 0,255);
  colorMapY = map(y,-x2,x2, 0,255);
  colorMapZ = map(x,-x2,x2, 100, 255);
  stroke(colorMapX,colorMapY, colorMapZ);
  line(y*sin(radians(x))/5, x*cos(radians(y))/5, x ,y);
  px = 0;
  py = 0;
  
  
}