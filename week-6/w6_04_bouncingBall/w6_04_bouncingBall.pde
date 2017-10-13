float x = 100;
float y = 100;
float r = 40;
float dx = 5;
float dy = 7;
float gravity = 0.8;

void setup() {
  size(800, 800);
}

void draw() {
  background(200);
  x += dx;
  y += dy;

  //dy += gravity;
  //dy *= 0.99;

  fill(255);
  ellipse(x, y, r*2, r*2);

  if (x > width - r || x < r) {
    dx = -dx;
  }

  if (y > height - r || y < r) {
    dy = -dy;
  }
}