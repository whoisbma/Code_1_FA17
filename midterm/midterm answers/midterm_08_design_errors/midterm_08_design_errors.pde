// QUESTION 8 -
// this code uses the modulo in a clever way to create a loop that you might ordinarily use an if statement to handle.
// fix the code so it returns when reaching the width of the canvas.

float position;

void setup() {
  size(600,600);
}

void draw() {
  background(180);
  ellipse(position, height/2, 100, 100);
  
  position = (position + 5) % width;
}