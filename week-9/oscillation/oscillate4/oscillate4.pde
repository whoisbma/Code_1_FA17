float[] y = new float[100];
float[] x = new float[100];
float angle;
float rate;

void setup() {
  size(700,700);
  noFill();
  stroke(0);
  angle = 0;
  rate = 1;
}

void draw() {
  background(255);
  float mx = map(mouseX, 0, width, 0.0, 0.3);
  float my = map(mouseY, 0, height, 0.0, 0.3);

  angle += rate;

  beginShape();
  for (int i = 0; i < y.length; i++) {
    curveVertex(x[i], y[i]);
    y[i] = height/2 + sin((angle + i) * mx) * 200;
    x[i] = width/2 + cos((angle + i) * my) * 200;
  }
  endShape();
}