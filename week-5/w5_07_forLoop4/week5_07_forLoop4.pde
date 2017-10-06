void setup() {
  size(600, 600, P3D);
}

void draw() {
  background(255);
  translate(width/2, height/2);
  rotateX(radians(mouseX * 0.25));
  rotateZ(radians(mouseY * 0.25));
  for (int i = 0; i <= 10; i++){
    for (int j = 0; j <= 10; j++) {
      for (int k = 0; k <= 10; k++) {  
        float x = map(i, 0, 10, -350, 350);
        float y = map(j, 0, 10, -350, 350);
        float z = map(k, 0, 10, -350, 350);
        pushMatrix();
        translate(x, y, z);
        fill(map(i, 0, 10, 0, 255), map(j, 0, 10, 0, 255), map(k, 0, 10, 0, 255));
        rotateX(radians(x + frameCount * 0.1));
        rotateY(radians(y + frameCount * 0.1));
        rotateZ(radians(z + frameCount * 0.1));
        box(20);
        popMatrix();
      }
    }
  }

}