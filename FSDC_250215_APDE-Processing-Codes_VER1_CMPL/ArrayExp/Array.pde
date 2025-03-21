/**
 * Array.
 * 
 * An array is a list of data. Each piece of data in an array 
 * is identified by an index number representing its position in 
 * the array. Arrays are zero based, which means that the first 
 * element in the array is [0], the second element is [1], and so on. 
 * In this example, an array named "coswav" is created and 
 * filled with the cosine values. This data is displayed three 
 * separate ways on the screen.
 */

float[] coswave = new float[width];

void setup() {

  //setting the coswave values
  size(1080, 1920);
  noFill();
  for (int i = 0; i < width; i++) {
    float amount = map(i, 0, width, 0, PI);
    coswave[i] = abs(cos(amount));
  }
  ellipseHuhu();
}
//display

void ellipseHuhu() {

  for (int i = 0; i < width; i++) {
    stroke(coswave[i]*255);
    ellipse(width/2, height/2, i, i);
    //line(i, 0, i, height/3);
  }
}
/*
for (int i = 0; i < width; i++) {
 stroke(coswave[i]*255/2);
 line(i, height/3, i, height/3*2);
 }
 
 for (int i = 0; i < width; i++) {
 stroke(255 - coswave[i]*255);
 line(i, height/3*2, i, height);
 }
 */