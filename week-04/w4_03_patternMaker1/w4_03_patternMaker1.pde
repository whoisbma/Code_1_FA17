// code 1 FA 17
// week 4 - example 03
// bryan ma
// pattern maker 1
// draw an ellipse at different intervals, 
// using conditionals to reset its position when its off the right side of the screen

int x = -20;
int y = 0;
float angle = 0;

void setup() {
  size(600, 600);
  rectMode(CENTER);
}

void draw() {  
  float fillGreyscaleColor = map(mouseX, 0, width, 0, 255);
  fill(fillGreyscaleColor);
  float strokeGreyscaleColor = map(mouseY, 0, height, 255, 0);
  stroke(strokeGreyscaleColor);
  ellipse(x, y, 12, 12);

  if (x > width + 20) {
    x = -20;
    y += 20;
  } else {
    x += 20;
  }
}