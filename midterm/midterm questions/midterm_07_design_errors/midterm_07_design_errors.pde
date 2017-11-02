// QUESTION 7
// currently this sketch has an array of Walker type objects that get instantiated individually when the mouse is pressed.
// because the array is of limited length, eventually it overflows if the mouse button is pushed long enough.
// fix the code to make sure that the overflow doesn't happen. 
// you could do this via logic with the walker counter, or using an ArrayList instead of an array.

Walker[] walkers = new Walker[100];

int whichWalker = 0;

void setup() {
  size(600,600);
  background(255);
}

void draw() {
  for (int i = 0; i < whichWalker; i++) {
    walkers[i].update();
    walkers[i].display();
  }

  if (mousePressed) {
    walkers[whichWalker] = new Walker(mouseX, mouseY);
    whichWalker++;
  }
}


class Walker {
  float x;
  float y;
  float moveSpeed;
  float alphaColor;

  Walker(float _x, float _y) {
    x = _x;
    y = _y;
    moveSpeed = random(5);
    alphaColor = 255;
  }
  
  void update() {
    alphaColor -= 0.1;
    int r = int(random(4));
    switch (r) {
      case 0:
        x += moveSpeed;
        break;
      case 1:
        x -= moveSpeed;
        break;
      case 2:
        y += moveSpeed;
        break;
      case 3:
        y -= moveSpeed;
        break;
      default:
        break;
    }
  }
  
  void display() {
    stroke(0, alphaColor);
    point(x,y);
  }
}