float x,y,z,inc,inc1;
float milliSecond, timeSecond, timeMinute, timeHour;
float hourCoor1,hourCoor2;
float minuteCoor1,minuteCoor2;
float secondCoor1,secondCoor2;
float setSecond,setMinute,setHour;
int ss = 50;
int mm = 59;
int hh = 9;

void setup(){
  size(displayWidth,displayHeight,P2D);
  orientation(PORTRAIT);
  smooth();
  noFill();
  frameRate(120);
  x = width/2;
  y = height/2;
  
  setSecond = 90-ss*6 ;//set second time, from 0-360
  setMinute = 90-mm*6 ;//set minute time, from 0-360
  setHour = 90-hh*30 ; //ser hour time, from 0-360
}
void draw(){
  background(0);
  translate(x,y);
  //scale(1.2);
  //inc++;
  milliSecond = millis()*10;
  timeSecond = floor(milliSecond/1000)*6;
  timeMinute = floor(milliSecond/60000)*6;
  timeHour = floor(milliSecond/3600000)*6;
  secondCoor1 = 400*cos(radians(timeSecond-setSecond));
  secondCoor2 = 400*sin(radians(timeSecond-setSecond));
  minuteCoor1 = 360*cos(radians(timeMinute-setMinute));
  minuteCoor2 = 360*sin(radians(timeMinute-setMinute));
  hourCoor1 = 200*cos(radians(timeHour-setHour));
  hourCoor2 = 200*sin(radians(timeHour-setHour));
  if ((minuteCoor1 == 360*cos(radians(timeMinute-270))) && (minuteCoor2 == 360*sin(radians(timeMinute-270)))){
    hh = hh+1;
  }
  //println(timeSecond);
  //println(timeMinute);
  //println(timeHour);
  println(minuteCoor1, minuteCoor2);
  secondHand();
  minuteHand();
  hourHand();
}

void secondHand(){
  stroke(255,0,0);
  strokeWeight(12);
  line(0,0, secondCoor1,secondCoor2);
  stroke(255,0,0);
  strokeWeight(4);
  ellipse(0,0,width-200,width-200);
 
}
void minuteHand(){
  stroke(0,255,0);
  strokeWeight(15);
  line(0,0, minuteCoor1,minuteCoor2);
  stroke(0,255,0);
  strokeWeight(8);
  ellipse(0,0,width-150,width-150);
}
void hourHand(){
  stroke(0,0,255);
  strokeWeight(25);
  line(0,0, hourCoor1,hourCoor2);
  stroke(0,0,255);
  strokeWeight(15);
  ellipse(0,0,width-100,width-100);
  
}
