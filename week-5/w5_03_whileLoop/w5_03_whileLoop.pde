// while loops

void setup() {
  size(600, 600);
  noStroke();
}

void draw() {
  background(255);

  int x = 0;
  while (x <= width) {
    fill(map(x, 0, width, 0, 255), 150, 150);
    ellipse(x, height/2, 50, 50);
    x += 50;
  }
}