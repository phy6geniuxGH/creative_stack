float Vo,V, accel, time;
float time1, Vx, Vy, accelX, accelY, Vox, Voy;
float time2, x, y, Vox1, Voy1, Vx1, Vy1, accel2X;
float accel2Y, xo, yo;
float easing = 0.01;

void setup(){
  size(1080, 1920);
  noStroke();
  background(0);
  frameRate(120);
  Vo = 0;
  accel = 9.8;
  accelX = 0;
  accelY = 9.8;
  Vox = 10;
  xo = 0;
  yo = 0;
  Vox1 = 500;
  Voy1 = 0;
  accel2X = 0;
  accel2Y = 9.8;
  //time2 = millis()+1000;
}

void draw(){
   //background(0);
   //accel1D();
   //accel2D();
   pushMatrix();
   translate(0,0);
   scale(0.40);
   realAccel();
  // println(millis());
   
   popMatrix();
}

void accel1D(){
  time = frameCount; 
  V = Vo + accel*time;
  fill(255);
  ellipse(V, 0, 10,10);
  Vo = V;
}

void accel2D(){
  time1 = frameCount;
  Vx = Vox + accelX*time1;
  Vy = Voy + accelY*time1;
  fill(255,0,0);
  ellipse(Vx, Vy, 10,10);
  Vox = Vox + Vx;
  Voy = Voy + Vy;
  
}

void realAccel(){
time2 = time2 + 0.011;
Vx1 = Vox1 + accel2X*time2;
Vox1 = Vx1;
x = xo + Vox1*time2 + accel2X*(time2*time2);
//xo = x; 
fill(255,0,0);
ellipse(x, 0, 20,20);
Vy1 = Voy1 + accel2Y*time2;
Voy1 = Vy1;
y = yo + Voy1*time2 + accel2Y*(time2*time2);
//yo = y;
fill(0,0,255);
ellipse(0, y, 20,20);

x += (time2 - x)*easing;
y += (time2 - y)*easing;
fill(0,255,0);
ellipse(x ,y, 20,20);
//+x*sin(radians(x)
//-x*cos(radians(x)
}