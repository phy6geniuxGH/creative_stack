float inc,inc1,inc2;
void setup() {

  size(400, 400);
  background(0);
  frameRate(120);
  
  //float dist2 = dist(width/2, height/2, 0, 0);
  //float dist3 = dist(width/2, height/2, width, height);
  //println(dist2);
  //println(dist3);

  
}

void draw(){
  inc++;
  inc1=250*sin(radians(inc*5));
  inc2=190*cos(radians(inc*12));
  float[][] distances;
  float maxDistance;
  maxDistance = dist(width/2, height/2, width, height);
  distances = new float[width][height];
  for (int i=0; i<height; i++) {
    for (int j=0; j<width; j++) {
      float dist = dist(width/2, height/2, j, i);
      distances[j][i] = (dist/maxDistance)*inc1;
    }
  }
  
  for (int i=0; i<height; i+=10) {
    for (int j=0; j<width; j+=10) {
      stroke(distances[j][i]*10-cos(radians(inc1)),distances[j][i]*10-inc1,distances[j][i]*10+inc2); //multiply by 2 will make
      // the values reach 255 easily, therefore, reducing the 
      // size of color gradient.
      ellipse(j, i, 10, 10);
      
    }
  }
  //exp(1,5);
  
}
void exp(int base, int ept) {
  int[] exponent = new int[ept];
  for (int i = 0; i < ept; i++) {
    exponent[i] = i;
  }
  println(exponent[ept-1]+1);
  println(base);
}
