final int ROWS = 5;
final int COLS = 5;
final int W = 50;
final int H = 25;

float[][] x = new float[COLS][ROWS];
float[][] y = new float[COLS][ROWS];
boolean[][] state = new boolean[COLS][ROWS];

void setup() {
  size(800, 800);
  for (int i = 0; i < COLS; i++) {
    for (int j = 0; j < ROWS; j++) {
      x[i][j] = 75 + i * 150;
      y[i][j] = 75 + j * 150;
      state[i][j] = false;
    }
  }
}


void draw() {
  background(240);
  for (int i = 0; i < COLS; i++) {
    for (int j = 0; j < ROWS; j++) {
      if (state[i][j] == true) {
        fill(255, 0, 0);
      } else {
        fill(255);
      }

      rect(x[i][j], y[i][j], W, H);
    }
  }
}

void mousePressed() {
  for (int i = 0; i < COLS; i++) {
    for (int j = 0; j < ROWS; j++) {
      if (mouseX > x[i][j] && mouseX < x[i][j] + W &&
        mouseY > y[i][j] && mouseY < y[i][j] + H) {
        state[i][j] = !state[i][j];
      }
    }
  }
}