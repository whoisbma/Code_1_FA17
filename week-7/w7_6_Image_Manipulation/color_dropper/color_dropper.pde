PImage img;

void setup() {
  size(660, 990);
  img = loadImage("portrait.jpg");
  noStroke();
}

void draw() {
  image(img,0,0);
  
  color c = get(mouseX,mouseY);
  fill(c);
  ellipse(mouseX,mouseY,80,80);
  
  float r = red(c);
  float g = green(c);
  float b = blue(c);
  
  println("color of selected pixel-->\tr: " + r + "\tg: " + g + "\tb: " + b);
}