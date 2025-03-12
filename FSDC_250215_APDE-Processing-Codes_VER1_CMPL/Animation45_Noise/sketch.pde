float x1,x2;
float v, inc,n;

void setup(){
  fullScreen(LANDSCAPE);
  frameRate(120);
  
  x1 = 0;
  x2 = width/2;
  rotate(radians(90));
  scale(1,-1);
  translate(x1,x2);

  line(0, 0, height, 0);
  v = 0.0;
  inc = 0.1;
  fill(0);
  noStroke();
  //noiseSeed(0);
  
  for (int i = 0; i < height; i+=1){
    n  = noise(v)*200;
    rect(i, 10+n, 3, 20);
    v += inc;
    
  }
  
}

void draw(){
  
  
}