float x,y;

void setup(){
  size(1080,1920);
  smooth();
  background(0);
  strokeWeight(1);
  x = width;
  y = height;
  
  for(int i = 0 ; i < 256; i+=3){
    for(int j = 0; j < 256; j+=3){
      for(int k =0; k < 256; k+=3){
        stroke(i, j, k);
        line(0, i+j+k, x, i+j+k);
        
      }
    }
  }
  for(int i = 0 ; i < 256; i++){
    for(int j = 0; j < 256; j++){
        stroke(i, j, 0);
        point(255*3 + i, 255*3/2 + j);
    }
  }
  colorMode(HSB);
  for (int i = 0; i <256; i++){
    stroke(i,255,255);
    line(0, 256*3 + i, x, 256*3 + i);
  }
  
}

void draw(){
  
  
}