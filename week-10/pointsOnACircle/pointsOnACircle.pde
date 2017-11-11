void setup() {
  size(800, 800);
  background(250);
  strokeWeight(3);
}

void draw() {
  translate(width/2, height/2);
  float angle = random(TWO_PI);
  float magnitude = 300;
  point(cos(angle) * magnitude, sin(angle) * magnitude);
}