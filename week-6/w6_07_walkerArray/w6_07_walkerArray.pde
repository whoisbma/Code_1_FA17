final int NUM_WALKERS = 15;

float[] x = new float[NUM_WALKERS];
float[] y = new float[NUM_WALKERS];

void setup() {
  size(800, 800);
    background(200);
  for (int i = 0; i < NUM_WALKERS; i++) {
    x[i] = width/2;
    y[i] = height/2;
  }
  //noStroke();
  background(220);
}

void draw() {

  for (int i = 0; i < NUM_WALKERS; i++) {
    int r = int(random(4));
    float moveAmount = map(i, 0, NUM_WALKERS, 1, 10);
    switch (r) {
      case 0:
        x[i] += moveAmount;
        break;
      case 1:
        x[i] -= moveAmount;
        break;
      case 2:
        y[i] += moveAmount;
        break;
      case 3:
        y[i] -= moveAmount;
        break;
      default:
        break;
    }
    
    float siz = map(i, 0, NUM_WALKERS, 50, 5);
    fill(map(i, 0, NUM_WALKERS, 0, 255));
    ellipse(x[i], y[i], siz, siz);
  }
}