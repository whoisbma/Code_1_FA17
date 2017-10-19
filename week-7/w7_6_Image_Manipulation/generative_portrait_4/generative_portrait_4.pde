PImage img;

void setup() {
  size(660, 990);
  img = loadImage("portrait.jpg");
  //noSmooth();
  stroke(255);
}

void draw() {
  background(0);
  
  
  int widthStep = 3;
  int heightStep = 3;
  
  for (int i = 0; i <= height; i += heightStep) {
    for (int j = 0; j <= width; j += widthStep) {
      
      color c = img.get(j, i);
      //color c = img.get(int(j + (sin(radians(frameCount+i+j))*5)), i);
      //color c = img.get(int(j + (sin(radians(frameCount+i+j))*70)), i);
      
      float r = red(c);
      float g = green(c);
      float b = blue(c);

      float brightness = (r+g+b)/3;

      float offset = map(brightness, 0, 255, 5, 0);

      stroke(map(brightness,0,255,150,255));
      point(j, i+offset);
    }
  }
}