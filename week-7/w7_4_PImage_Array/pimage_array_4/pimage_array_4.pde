//we'll use this number just to set up our array size
int IMG_NUM = 10;

//create the image array of size 10
PImage[] pusheen = new PImage[IMG_NUM];

void setup() {
  size(500,500);
  imageMode(CENTER);
  
  //load all the images into our array
  for (int i = 0; i < pusheen.length; i++) {
    pusheen[i] = loadImage("pusheen"+i+".jpg");    
  }
}

void draw() {
  println();
  background(210);
  
  //if i want to use the 1D list to draw a grid,
  //i can do a 2D loop through our 1D array
  //what's the value of (int)sqrt(IMG_NUM)? why am i using it?
  for (int i = 0; i < (int)sqrt(IMG_NUM); i++) {
    for (int j = 0; j < (int)sqrt(IMG_NUM); j++) {
      
      //translating a 1D index from 2D positions = width * row + column
      int index = (int)sqrt(IMG_NUM) * j + i;
      
      //adding some fun transform stuff cause why not
      pushMatrix();
      translate(100 + i * 150, 100 + j * 150);
      rotate((frameCount * 0.03) + i + j);
      image(pusheen[index], 0, 0, sin(i+j+frameCount * 0.03)*100, 100);
      popMatrix();
    }
  }
  
}