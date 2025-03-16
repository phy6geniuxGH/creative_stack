basicMove ellp;
basicMove ellp2;

void setup(){
  size(1080,1920);
  ellp = new basicMove(500,100, 2 ,150, 1);
  //ellp2 = new basicMove(0,0, 1, 100, PI);
}

void draw(){
  translate(width/2, height/2); 
  background(0);
  scale(1, -1);
  rotate(radians(30));
  ellp.move();
  ellp.display();
  //ellp2.move();
 // ellp2.display();
}