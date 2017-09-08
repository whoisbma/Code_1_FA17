void setup() {
  size(800, 800);
}

void draw() {
  background(150);
  // translate to the middle of the screen, draw a face, 
  // translate again to the right, draw another face, and repeat
  translate(0, height/2);
  scale(0.4);   // scales down the entire canvas
  drawFace(0, 0);
  translate(500, 0);
  drawFace(0, 0);
  translate(500, 0);
  drawFace(0, 0);
  translate(500, 0);
  drawFace(0, 0);
  translate(500, 0);
  drawFace(0, 0);
}

void drawFace(float x, float y) {
  float faceX = x;
  float faceY = y;
  float faceW = 400;
  float faceH = 500;
  float rEyeX = faceX + 100;
  float rEyeY = faceY;
  float lEyeX = faceX - 100;
  float lEyeY = faceY;

  // notice these functions inside the drawFace() function take arguments from drawFace()
  drawEars(faceX, faceY);
  drawHead(faceX, faceY, faceW, faceH);
  drawEyes(rEyeX, rEyeY, lEyeX, lEyeY);
  drawNose(faceX, faceY);
  drawMouth(faceX, faceY);
}

void drawEars(float x, float y) {
  strokeWeight(1);
  fill(220);
  ellipse(x - 200, y, 50, 120);
  ellipse(x + 200, y, 50, 120);
}

void drawHead(float x, float y, float w, float h) {
  strokeWeight(1);
  fill(230);
  ellipse(x, y, w, h);
}

void drawEyes(float rx, float ry, float lx, float ly) {
  fill(255);
  ellipse(rx, ry, 100, 100);
  ellipse(lx, ly, 100, 100);
  fill(0);
  float mouseDistanceModifier = 0.06;
  ellipse(rx + (mouseX - width/2) * mouseDistanceModifier, 
    ry + (mouseY - height/2) * mouseDistanceModifier, 50, 50);
  ellipse(lx + (mouseX - width/2) * mouseDistanceModifier, 
    ly + (mouseY - height/2) * mouseDistanceModifier, 50, 50);
}

void drawNose(float x, float y) {
  strokeWeight(1);
  line(x, y, x + 20, y + 120);
  strokeWeight(2);
  line(x - 20, y + 130, x + 20, y + 120);
}

void drawMouth(float x, float y) {
  strokeWeight(2);
  noFill();
  arc(x, y + 150, 200, 50, PI/3, 2*PI/3);
}