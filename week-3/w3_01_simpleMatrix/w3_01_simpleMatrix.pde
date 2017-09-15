// code 1 FA 17
// week 3 - example 01
// bryan ma
// simple translation with pushMatrix and popMatrix
// draw 3 rectangles, each with their own coordinate system

void setup() {
  size(800, 800);
  rectMode(CENTER);
}

void draw() {
  background(150);
  
  // first rectangle
  pushMatrix();  // save current coordinate system
  translate(200, height/2); // apply 3 matrix transformations (translate, scale, rotate)
  scale(1.0);  // normal scale
  rotate(radians(15 + mouseX * 0.2));  // rotate based on mouse position and an arbitrary starting angle
  fill(200, 100, 80);
  rect(0, 0, 100, 100);  // draw rectangle at origin (0, 0) of transformed coordinate system
  popMatrix();  // restore saved coordinate system
  
  // second rectangle
  pushMatrix();
  translate(400, height/2);
  scale(0.5);
  rotate(radians(45 + mouseX * 0.2));
  fill(80, 200, 100);
  rect(0, 0, 150, 50);
  popMatrix();
  
  // third rectangle
  pushMatrix();
  translate(600, height/2);
  scale(1.5);
  rotate(radians(70 + mouseX * 0.2));
  fill(100, 80, 200);
  rect(0, 0, 50, 150);
  popMatrix();
}