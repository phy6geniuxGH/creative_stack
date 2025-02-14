float xp = 0;
float xp1 = 999;

void setup(){
  frameRate(30);
  size(1000,1000);
  //background(0);
  smooth();
}
void draw(){
  background(0);
    for(float i = 0; i <= 5; i++) {
      if(i <= 5){
        xp += i;
        fill(255);
        ellipse(xp,500, 150,150);
        } else {
        xp -= i;
        fill(255);
        ellipse(1000 + xp,500, 150,150);
        }
        xp1 -= i;
        fill(255);
        ellipse(xp1,500, 150,150);
  }
  
}