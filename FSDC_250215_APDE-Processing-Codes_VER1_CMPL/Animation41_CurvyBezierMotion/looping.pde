float x1, x2, i, j, amp1, amp2, n1, n2;
float vX1, vY1, vX2, vY2, distPi, distPi2;
float deg;

void setup(){
  fullScreen(PORTRAIT);
  //size(1080,1920);
  smooth();
  //background(0);
  x1 = 0;
  x2 = height/2;
  amp1 = 400;
  amp2 = 400;
  n1 = 1;
  n2 = 1;
  noFill();
  deg = 90;
}

void draw(){
  translate(x1,x2);
  //rotate(radians(deg));
  scale(1,-1);
  background(0);
  i+=5;
  j+=5;
  vX1 = amp1*sin(n1*radians(i));
  vY1 = amp1*cos(n1*radians(i));
  vX2 = amp2*sin(n2*radians(j));
  vY2 = amp2*cos(n2*radians(j));
  
  beginShape();
  stroke(255);
  strokeWeight(2); 
  vertex(0,0);
  bezierVertex(width/2, vY1, width/2, -vY1, width,0);
  bezierVertex(6*width/8, -vY1, 6*width/8, +vY1, width/2,0);
  endShape();
  
  line(0,0,width,0);
  
  beginShape();
  vertex(0, 0);
  bezierVertex(2*width/8, vY1, 2*width/8, -vY1, width/2,0);
  endShape();
  
  
  beginShape();
  vertex(0, 0);
  bezierVertex(width/2, vY1, width, 0, width,0);
  endShape();
  
  /*
  beginShape();
  curveVertex(0, 0);
  curveVertex(0, 0);
  //curveVertex(width/3, vY1);
  curveVertex(width/2, -vY1);
  //curveVertex(2*width/3, vY1);
  curveVertex(width, 0);
  curveVertex(width, 0);
  endShape();
  */
}