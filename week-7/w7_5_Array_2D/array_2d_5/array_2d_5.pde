int COLS_NUM = 30;
int ROWS_NUM = 30;

float[][] posx = new float[COLS_NUM][ROWS_NUM];
float[][] posy = new float[COLS_NUM][ROWS_NUM];

void setup() {
  size(600, 600);

  float xStepAmount = (width - 200)/(posx.length - 1);
  float yStepAmount = (height - 200)/(posx[0].length - 1);

  for (int i = 0; i < posx.length; i++) {
    for (int j = 0; j < posx[0].length; j++) {
      posx[i][j] = 100 + i * xStepAmount;
      posy[i][j] = 100 + j * yStepAmount;
    }
  }

  noCursor();
  noStroke();
}

void draw() {
  background(5);

  for (int i = 0; i < posx.length; i++) {
    for (int j = 0; j < posx[0].length; j++) {
      float r = map(i,0,posx.length,0,255);
      float g = map(j,0,posx[0].length,0,255);
      float b = map(dist(mouseX,mouseY,posx[i][j],posy[i][j]),0,200,255,0);
      fill(r,g,b);
      float s = max(map(dist(mouseX,mouseY,posx[i][j],posy[i][j]),0,200,50,10),0);
      ellipse(posx[i][j], posy[i][j], s, s);
      posx[i][j] += random(-1,1);
      posy[i][j] += random(-1,1);
    }
  }
}