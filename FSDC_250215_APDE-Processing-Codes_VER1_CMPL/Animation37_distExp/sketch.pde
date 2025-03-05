float x, y, x2, y2,xx,yy;

void setup(){
  size(1080,1920);
  background(0);
  smooth();
  x = width/2;
  y = height/2;
}

void draw(){
  background(0);
  translate(x,y);
  scale(1,-1);
  float r = random(1);
  float d = dist(mouseX, mouseY, x,y);
  //float d = distBet(mouseX, mouseY, x ,y);
  yy--;
  xx--;
  fill(255);
  ellipse(xx,yy, d,d);
  
}

float distBet(float x2, float y2, float x1, float y1){
  float distance = sqrt(pow((y2 - y1),2) + pow((x2 - x1),2));
  return distance;
}