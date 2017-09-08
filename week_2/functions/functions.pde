void setup() {
  size(800, 800);
}

void draw() {
  drawFace(400, 400);
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

  // draw ears
  strokeWeight(1);
  fill(220);
  ellipse(faceX - 200, faceY, 50, 120);
  ellipse(faceX + 200, faceY, 50, 120);
  
  // draw head
  strokeWeight(1);
  fill(230);
  ellipse(faceX, faceY, faceW, faceH);
  
  // draw eyes
  fill(255);
  ellipse(rEyeX, rEyeY, 100, 100);
  ellipse(lEyeX, lEyeY, 100, 100);
  fill(0);
  float mouseDistanceModifier = 0.06;
  ellipse(rEyeX + (mouseX - width/2) * mouseDistanceModifier, 
          rEyeY + (mouseY - height/2) * mouseDistanceModifier, 50, 50);
  ellipse(lEyeX + (mouseX - width/2) * mouseDistanceModifier, 
          lEyeY + (mouseY - height/2) * mouseDistanceModifier, 50, 50);
  
  // draw nose
  strokeWeight(1);
  line(x, y, x + 20, y + 120);
  strokeWeight(2);
  line(x - 20, y + 130, x + 20, y + 120);
  
  // draw mouth
  strokeWeight(2);
  noFill();
  arc(faceX, faceY + 150, 200, 50, PI/3, 2*PI/3);
}