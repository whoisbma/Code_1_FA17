class Ball {
  float x;
  float y;
  float dx;
  float dy;
  float r;
  color c;

  Ball(float xPos, float yPos, float radius) {
    x = xPos;
    y = yPos;
    r = radius;
    dx = random(-3, 3);
    dy = random(-3, 3);
    c = color(240);
  }

  void display() {
    fill(c);
    ellipse(x, y, r*2, r*2);
    c = color(240);
  }

  void update() {
    if (x < r || x > width-r) {
      x -= dx;
      dx *= -1;
    }
    if (y < r || y > height-r) {
      y -= dy;
      dy *= -1;
    }

    x += dx;
    y += dy;
  }

  void checkMouseCollision() {
    if (dist(x, y, mouseX, mouseY) < r) { 
      c = color(255, 200, 0);
    } else {
      c = color(240);
    }
  }

  boolean isCollidingWithBall(float otherX, float otherY, float otherR) {
    if (dist(x, y, otherX, otherY) < r + otherR) {
      return true;
    } else {
      return false;
    }
  }

  void checkOtherCollision(Ball other) {
    if (isCollidingWithBall(other.x, other.y, other.r)) {
      changeColor(color(255, 0, 50));
      other.changeColor(color(255, 0, 220));
      changeDirection();
      other.changeDirection();
    }
  }

  void changeDirection() {
    dx *= -1;
    dy *= -1;
  }

  void changeColor(color newColor) {
    c = newColor;
  }
}