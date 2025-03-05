int[] randomCounts = new int[20];

void setup(){
  size(700,700);
  smooth();
  
}
void draw(){
  background(0);
  int index = int(random(randomCounts.length));
  randomCounts[index]++;
  
  
  fill(175);
  stroke(0);
  int w = width/randomCounts.length;
  
  for (int x = 0; x < randomCounts.length; x++){
    rect(x*w, height, w-1, -randomCounts[x]);
  }
}