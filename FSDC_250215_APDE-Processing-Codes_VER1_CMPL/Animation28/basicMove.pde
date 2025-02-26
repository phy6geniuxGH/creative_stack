class basicMove{
  float x ;
  float y;
  float x_r;
  float y_r;
  float inc;
  float D_m;
  float val;
  float d;
  float scalar;
  
  basicMove(float tempX, float tempY, float tempInc, float tempD, float tempScalar){
    x_r = tempX;
    y_r = tempY;
    inc = tempInc;
    D_m = tempD;
    scalar = tempScalar;
  }
  void move(){
    val += inc;
    x = x_r*cos(radians(val*scalar));
    y = y_r*sin(radians(val*scalar));
    d = (D_m)+(D_m/1.3)*sin(radians(val*scalar));
  }
  void display(){
    fill(255);
    ellipse(x,y, d,d);
  }
}