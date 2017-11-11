int numBalls = 100;

float x[] = new float[numBalls];
float y[] = new float[numBalls];
float r[] = new float[numBalls];
float dx[] = new float[numBalls];
float dy[] = new float[numBalls];
color c[] = new color[numBalls];

void setup() {
  size(800, 800);
  //noStroke();
  for (int i = 0; i < numBalls; i++) {
    r[i] = random(5, 20);
    x[i] = random(r[i], width - r[i]);
    y[i] = random(r[i], height - r[i]);
    dx[i] = random(-8, 8);
    dy[i] = random(-8, 8);
    c[i] = color(random(255), random(255), random(255));
  }
}

void draw() {
  background(255);

  for (int i = 0; i < numBalls; i++) {
    x[i] += dx[i];
    y[i] += dy[i];

    fill(c[i]);
    
    ellipse(x[i], y[i], r[i]*2, r[i]*2);

    if (x[i] > width - r[i] || x[i] < r[i]) {
      dx[i] = -dx[i];
    }

    if (y[i] > height - r[i] || y[i] < r[i]) {
      dy[i] = -dy[i];
    }
  }
}