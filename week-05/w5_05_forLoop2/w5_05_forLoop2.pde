void setup() {
  size(600, 600);
  rectMode(CENTER);
  noStroke();
}

void draw() {
  background(255);
  
  for (int i = 0; i <= width; i+=20) {
    for (int j = 0; j <= height; j+=20) {
      
      float r = map(i, 0, width, 0, 255);
      float g = map(j, 0, height, 0, 255);
      
      fill(r, g, 125);
      rect(i, j, 15, 15);
    }
  }
}