float x = 299;
float y = 499;
float yy =499;



void setup(){
  size(1000,1000);
  frameRate(120);
  smooth();
  
  
}
void draw(){
  background(255);
  Wheel();
  //Line();
  Shaft();
  
  
}

void Line(){
  strokeWeight(12);
  stroke(255,0,0);
   yy++;
  //for(int i=0; i<200; i=i+100){
    line(x, 699, 600+81*sin(yy*4),699+81*cos(yy*4));
  //}
  //if(yy >= 750){
  //  yy=499;
  //}
}

void Shaft(){
  strokeWeight(18);
  stroke(0,0,0);
  y++;
  //float k = 1/8;
  //float c = 2;
  //float t = 0;
  line(x+71*cos(y/3), 499+71*sin(y/3), 700+71*cos(y/3),499+71*sin(y/3));
  stroke(255,0,0);
  fill(255,0,0);
  ellipse(700+71*cos(y/3),499+71*sin(y/3), 20,20);
  ellipse(x+71*cos(y/3),499+71*sin(y/3), 20,20);
  
}

void Wheel(){
  fill(100,50);
  strokeWeight(18);
  stroke(0,0,255);
  
  ellipse(700,499, 200,200);
  strokeWeight(10);
  ellipse(700,499, 145,145);
  
  fill(100,50);
  strokeWeight(18);
  stroke(0,0,255);
  
  ellipse(x,499, 200,200);
  strokeWeight(10);
  ellipse(x,499, 145,145);
}