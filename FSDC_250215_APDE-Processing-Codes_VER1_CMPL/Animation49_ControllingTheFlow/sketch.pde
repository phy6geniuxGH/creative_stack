int frame = 0;

void setup(){
  fullScreen();
  frameRate(30);
}
void draw(){
  translate(width/2, height/2);
  if(frame > 60){
    noLoop();
    background(0);
  } else {
    background(204);
    line(mouseX, 0, mouseX, width);
    line(-height, mouseY, height, mouseY);
    frame++;
  }
}

void mousePressed(){
  loop();
  frame=0;
}