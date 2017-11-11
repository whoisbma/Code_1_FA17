// code 1 FA 17
// week 3 - example 04
// bryan ma
// nested transformations with pushMatrix and popMatrix
// multiple nested translations and rotations, 
// with a final rectangle being drawn in the innermost matrix.

float angle = 0;
float x = 0;

void setup() {
  size(800, 800);
  rectMode(CENTER);
}

void draw() {
  //background(200);
  
  noStroke();
  fill(255, 1);
  rect(0, 0, width*2, height*2);
  
  // save the starting coordinate system
  pushMatrix();
  translate(width/2, height/2);
  scale(0.8);
  rotate(radians(angle));
  angle = angle - 1;
  fill(255);
  //rect(0, 0, 200, 200);
  // go back to that saved starting coordinate system
  
  pushMatrix();
  translate(150, 150);
  rotate(radians(-angle * 2.2));
  //rect(0, 0, 80, 120);
  
  pushMatrix();
  translate(80, 80);
  rotate(radians(angle * 3));
  //rect(0, 0, 40, 40);
  
  pushMatrix();
  translate(120, 50);
  rotate(radians(angle*4));
  fill(mouseX * 0.3, mouseY * 0.3, 150);
  noStroke();
  rect(0, 0, 50 * mouseX / width * 3.0, 30 * mouseY / height * 2.5);
  popMatrix();
  popMatrix();
  popMatrix();
  popMatrix();
}