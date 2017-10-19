PImage img;

void setup() {
  size(660, 990);
  img = loadImage("portrait.jpg");
  noStroke();
  rectMode(CENTER);
}

void draw() {
  background(255);
  
  int widthStep = 3;
  int heightStep = 20;
  
  for (int i = 0; i < width; i+=widthStep) {
    for (int j = 0; j < height; j+=heightStep) {
      color c = img.get(i, j);
      
      
      float r = red(c);
      float g = green(c);
      float b = blue(c);
      
      float brightness = (r+g+b)/3;
      fill(brightness);
      
      float s = map(brightness,0,255,20,0);
      
      rect(i, j, 2, s);
    }
  }
}