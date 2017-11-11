PImage screenCapture;
float screenMoveRate = 1;
float screenStretchRate = 10;

float angle = 0;
float amplitude = 0;

void setup() {
  size(800, 400);
  background(255);
  screenCapture = get(0, 0, width, height);
}

void draw() {
  image(screenCapture, screenMoveRate, 0, screenCapture.width + screenStretchRate, screenCapture.height);
  
  angle += map(mouseX, 0, width, 0, 10);
  amplitude = map(mouseY, 0, height, 0, height/2);
  ellipse(100, height/2 + sin(radians(angle)) * amplitude, 20, 20);
  screenCapture = get(0, 0, width, height);
}