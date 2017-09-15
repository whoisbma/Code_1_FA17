// code 1 FA 17
// week 3 - example 02
// bryan ma
// simple translation with pushMatrix and popMatrix - version 2
// same as previous sketch, but using a custom function instead to save on repetitive typing

void setup() {
  size(800, 800);
  rectMode(CENTER);
}

void draw() {
  background(150);
  drawRotatedRect(200, height/2, 100, 100, 1.0, 15, color(200, 100, 80));
  drawRotatedRect(400, height/2, 150, 50, 0.5, 45, color(80, 200, 100));
  drawRotatedRect(600, height/2, 50, 150, 1.5, 70, color(100, 80, 200));
}

void drawRotatedRect(float x, float y, float w, float h, float scale, float angle, color c) {
  pushMatrix();
  translate(x, y);
  scale(scale);
  rotate(radians(angle + mouseX * 0.2));
  fill(c);
  rect(0, 0, w, h);
  popMatrix();
}