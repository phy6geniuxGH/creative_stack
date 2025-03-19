Motion2D[] ball = new Motion2D[300]; //initiate the number of objects


float x,y,vx,vy;    //initiate the position and velocity
float ax = 0;       //set the x-acceleration
float ay = 0;       //set the y-acceleration
float factor = 1; //set the multiplication factor
float terminal = 30;//set the pseudo-terminal velocity
float textAdjust = 70; //set the text spacing

void setup(){
  
  fullScreen(P2D);
  //background(0);
  for(int i = 0; i < ball.length; i++){
    x = random(0, width);
    y = random(0, height); //set the x,y,vx,vx
    vx = random(-2,2);
    vy = random(-2,2);   
    ball[i] = new Motion2D(x,y,vx,vy,ax,ay,factor, terminal);
  }
}
void draw(){
  fill(0,100);
  rect(0,0,width, height);
  //background(0);
  for(int i = 0; i < ball.length; i++){
    ball[i].calculate();
    ball[i].bounds();
    ball[i].display(textAdjust*i); //textAdjust iterated under for loop
  }
  
}