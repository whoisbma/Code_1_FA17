boolean switchState1 = false;
boolean switchState2 = false;
boolean switchState3 = false;

float switch1x = 100;
float switch1y = 260;

float switch2x = 250;
float switch2y = 260;

float switch3x = 400;
float switch3y = 260;

float switchW = 100;
float switchH = 80;

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  if (mousePressed) {
    if (mouseX > switch1x && mouseX < switch1x + switchW &&
        mouseY > switch1y && mouseY < switch1y + switchH) {
      switchState1 = true;
    } else if (mouseX > switch2x && mouseX < switch2x + switchW &&
               mouseY > switch2y && mouseY < switch2y + switchH) {
      switchState2 = true;
    } else if (mouseX > switch3x && mouseX < switch3x + switchW &&
               mouseY > switch3y && mouseY < switch3y + switchH) {
      switchState3 = true;
    }
  }
  
  if (switchState1) {
    background(255, 30, 30);
  } else if (switchState2) {
    background(30, 255, 30);
  } else if (switchState3) {
    background(30, 30, 255);
  }
  
  rect(switch1x, switch1y, switchW, switchH);
  rect(switch2x, switch2y, switchW, switchH);
  rect(switch3x, switch3y, switchW, switchH);
  
  switchState1 = false;
  switchState2 = false;
  switchState3 = false;
}