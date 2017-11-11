PImage img;

void setup() {
  size(660, 990);
  img = loadImage("portrait.jpg");
  //noStroke();
  
}

void draw() {
  background(255);
  
  int widthStep = 20;
  int heightStep = 20;
  
  for (int i = 0; i < width; i+=widthStep) {
    for (int j = 0; j < height; j+=heightStep) {
      color c = img.get(i, j);
      fill(c);
      ellipse(i, j, 15, 15);
    }
  }
}