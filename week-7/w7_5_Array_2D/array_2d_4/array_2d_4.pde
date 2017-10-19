int COLS_NUM = 30;
int ROWS_NUM = 30;

float[][] posx = new float[COLS_NUM][ROWS_NUM];
float[][] posy = new float[COLS_NUM][ROWS_NUM];

void setup() {
  size(600, 600);

  float xStepAmount = (width-200)/(posx.length - 1);
  float yStepAmount = (height-200)/(posx[0].length - 1);

  for (int i = 0; i < posx.length; i++) {
    for (int j = 0; j < posx[0].length; j++) {
      posx[i][j] = 100 + i * xStepAmount;
      posy[i][j] = 100 + j * yStepAmount;
    }
  }

  strokeWeight(5);
  stroke(255);
}

void draw() {
  background(5);

  for (int i = 0; i < posx.length; i++) {
    for (int j = 0; j < posx[0].length; j++) {
      float r = map(i,0,posx.length,0,255);
      float g = map(j,0,posx[0].length,0,255);
      float b = map(dist(mouseX,mouseY,posx[i][j],posy[i][j]),0,200,0,255);
      stroke(r,g,b);
      point(posx[i][j], posy[i][j]);
      posx[i][j] += random(-1,1);
      posy[i][j] += random(-1,1);
    }
  }
}