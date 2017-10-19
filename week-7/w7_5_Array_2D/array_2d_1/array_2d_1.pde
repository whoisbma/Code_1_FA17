int COLS_NUM = 10;
int ROWS_NUM = 10;

float[][] posx = new float[COLS_NUM][ROWS_NUM];
float[][] posy = new float[COLS_NUM][ROWS_NUM];

void setup() {
  size(600,600);
  
  for (int i = 0; i < posx.length; i++) {
    for (int j = 0; j < posx[0].length; j++) {
      posx[i][j] = i * 10;
      posy[i][j] = j * 10;
    }
  }

  strokeWeight(3);
  stroke(255);
}

void draw() {
  background(5);
  
  for (int i = 0; i < posx.length; i++) {
    for (int j = 0; j < posx[0].length; j++) {
      point(posx[i][j], posy[i][j]);
    }
  }
  
}