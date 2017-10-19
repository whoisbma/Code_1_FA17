int IMG_NUM = 10;
PImage[] pusheen = new PImage[IMG_NUM];

void setup() {
  size(1000,500);
  imageMode(CENTER);
  for (int i = 0; i < pusheen.length; i++) {
    pusheen[i] = loadImage("pusheen"+i+".jpg");    
  }
}

void draw() {
  background(210);
  for (int i = 0; i < pusheen.length; i++) {
    image(pusheen[i],50+i*100,100,100,100);
  }
}