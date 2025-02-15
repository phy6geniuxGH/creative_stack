int x;
int y;
float z;
void setup(){
  size(1080,1920);
  background(0);
  frameRate(30);
  noStroke();
  for (int i = 10; i <width; i+=10){
    for(int j = 10; j <height; j+=10){
      fill(map(i, 10,width,0,255),  map(i, 10,width,0,255), map(j, 10,height,0,255));
      ellipse(i,j, 10,10);
    }
  }
}
void draw(){
  for (int i = 0; i <width; i+=10){
    for(int j = 0; j <height; j+=10){
      fill(255);
      ellipse(i,j, 5,5);
     }
  }
}