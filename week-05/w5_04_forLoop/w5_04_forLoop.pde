void setup() {
  size(600, 600);
  rectMode(CENTER);
}

void draw() {
  background(255);
  fill(105);
  
  float maxLoops = 30;
  
  for (int i = 0; i <= maxLoops; i++) {
    
    float xPos = map(i, 0, maxLoops, 0, width);
    float c = map(i, 0, maxLoops, 0, 255);
    fill(c);
    rect(xPos, height/2, 10, 100);
    
  }
}