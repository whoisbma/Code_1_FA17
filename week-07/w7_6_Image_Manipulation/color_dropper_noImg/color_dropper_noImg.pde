PImage img;

void setup() {
  size(660, 990);
  img = loadImage("portrait.jpg");
  noStroke();
}

void draw() {
  color c = img.get(mouseX,mouseY);
  fill(c);
  ellipse(mouseX,mouseY,80,80);
}