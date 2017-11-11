boolean switchState = false;

float switchPosX = 300;
float switchPosY = 300;
float switchRadius = 50;

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  
  if (switchState) {
    background(255);
  } else {
    background(10);
  }
  
  ellipse(switchPosX, switchPosY, switchRadius * 2, switchRadius * 2);
}

void mousePressed() {
  if (dist(mouseX, mouseY, switchPosX, switchPosY) < switchRadius) {
    switchState = !switchState;
  }
}