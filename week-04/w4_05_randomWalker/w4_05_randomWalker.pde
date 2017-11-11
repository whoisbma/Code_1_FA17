// code 1 FA 17
// week 4 - example 05
// bryan ma
// random walker
// 25% chance to move up, left, right, or down
// shape drawn depends on mouse position

float x;
float y;

void setup() {
  size(600, 600);
  background(250);
  rectMode(CENTER);
  x = width/2;
  y = height/2;
  noStroke();
}

void draw() {
  float r = int(random(4));
  
  if (r == 0) {
    y -= 5;
  } else if (r == 1) {
    x += 5;
  } else if (r == 2) {
    y += 5;
  } else {
    x -= 5;
  } 
  
  fill(0);
  
  float w = map(mouseX, 0, width, 1, 10);
  float h = map(mouseY, 0, height, 1, 10);
  rect(x, y, w, h);
}