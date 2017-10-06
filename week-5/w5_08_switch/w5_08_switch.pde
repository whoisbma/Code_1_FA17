int state = 0;

void setup() {
   size(500, 500);
}

void draw() {  
  switch (state) {
    case 0:
      background(0);
      break;
    case 1:
      background(70);
      break;
    case 2:
      background(140);
      break;
    case 3:
      background(210);
      break;
    case 4:
      background(255);
      break;
    default:
      println("not expecting to see this...!");
      break;
  }
}

void mousePressed() {
  state++;
  if (state > 4) {
    state = 0;
  }
}