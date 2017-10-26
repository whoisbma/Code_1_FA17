Ball[] b = new Ball[20];

void setup() {
  size(800, 800);
  for (int i = 0; i < b.length; i++) {
    boolean colliding = true;
    b[i] = new Ball(random(100, 700), random(100, 700), random(10, 50));
    while (colliding == true) {
      colliding = false;
      for (int j = 0; j < i; j++) {
        if (b[i].isCollidingWithBall(b[j].x, b[j].y, b[j].r)) {
          colliding = true;
          b[i].x = random(100, 700);
          b[i].y = random(100, 700);
        }
      }
    }
  }
}

void draw() {
  background(255);
  for (int i = 0; i < b.length; i++) {
    //b[i].checkMouseCollision();
    for (int j = i + 1; j < b.length; j++) {
      b[i].checkOtherCollision(b[j]);
    }
    b[i].update();
    b[i].display();
  }
}