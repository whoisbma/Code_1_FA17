// code 1 FA 17
// week 4 - example 04
// bryan ma
// pattern maker 2
// same approach as last sketch, but with a rotating rectangle with variable size

int x = 0;
int y = 0;
float angle = 0;

void setup() {
  size(600,600);
  rectMode(CENTER);
  noStroke();
}

void draw() {
  angle += 5;
  x += 5;
  
  translate(x,y);
  rotate(radians(angle)); 
  
  float rColor = map(x, 0, width, 0, 255);
  float gColor = map(y, 0, height, 0, 255);
  float bColor = 100;
  
  fill(rColor, gColor, bColor);
  rect(0, 0, mouseX * 0.5, mouseY * 0.5);
  
  if (x > width) {
    x = 0;
    y += 50;
  }
}