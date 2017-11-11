int MAX = 100;

float[] x = new float[MAX];
float[] y = new float[MAX];

void setup() {
  size(800, 800); 
  noStroke();
  for (int i = 0; i < MAX; i++) {
    x[i] = mouseX;
    y[i] = mouseY;
  }
}

void draw() {
  background(255);

  for (int i = 0; i < MAX-1; i++) {
    x[i] = x[i+1];
    y[i] = y[i+1];
  }

  x[x.length-1] = mouseX;
  y[y.length-1] = mouseY;

  for (int i = 0; i < MAX; i++) {
    fill(map(i, 0, MAX, 255, 0));
    ellipse(x[i], y[i], i, i);
  }
}