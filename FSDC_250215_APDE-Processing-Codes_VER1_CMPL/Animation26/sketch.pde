float angle = 0.0;
float angleDirection = 1;
float speed = 0.05;

void setup(){
  size(1080,1920);
  smooth();
  
}

void draw(){
  background(204);
  pushMatrix();
  translate(20,25);
  rotate(angle);
  strokeWeight(12);
  line(0,0,500,0);
  translate(500,0);
  rotate(angle*2.0);
  strokeWeight(6);
  line(0,0,400,0);
  translate(400,0);
  rotate(angle*2.5);
  strokeWeight(3);
  line(0,0,300,0);
  translate(300,0);
  rotate(angle*3.0);
  strokeWeight(1);
  line(0,0,100,0);
  popMatrix();
  
  pushMatrix();
  translate(20,25);
  rotate(angle*2);
  strokeWeight(12);
  line(0,0,500,0);
  translate(500,0);
  rotate(angle*2.5);
  strokeWeight(6);
  line(0,0,400,0);
  translate(400,0);
  rotate(angle*3.5);
  strokeWeight(3);
  line(0,0,300,0);
  popMatrix();
  
  translate(20,25);
  rotate(angle*0.1);
  strokeWeight(12);
  line(0,0,500,0);
  translate(500,0);
  rotate(angle*0.3);
  strokeWeight(6);
  line(0,0,400,0);
  translate(400,0);
  rotate(angle*0.5);
  strokeWeight(3);
  line(0,0,300,0);
  translate(300,0);
  rotate(angle*0.7);
  strokeWeight(1);
  line(0,0,100,0);
  
  angle += speed*angleDirection;
  if ((angle >QUARTER_PI)|| (angle<0)){
    angleDirection *= -1;
  }
}