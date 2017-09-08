float angleToRotate = 0;
int rectSize = 100;

void setup() {
  size(600, 600);
  rectMode(CENTER);
}

void draw() {
  translate(mouseX, mouseY);
  rotate(radians(angleToRotate));
  angleToRotate += 1;
  
  rect(0, 0, rectSize, rectSize);
}