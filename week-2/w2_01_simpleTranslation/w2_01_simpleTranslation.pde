void setup() {
  size(600, 600);
  noStroke();
}

void draw() {
  background(150);
  translate(width/2, height/2);
  fill(255);
  ellipse(0, 0, 100, 100);
  fill(0);
  text("first translation", 0, 0);
  
  translate(100, 100);
  fill(255);
  ellipse(0, 0, 50, 50);
  fill(0);
  text("second translation", 0, 0);
}