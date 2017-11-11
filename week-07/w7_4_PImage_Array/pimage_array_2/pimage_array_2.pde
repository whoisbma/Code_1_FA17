//we'll use this number just to set up our array size
int IMG_NUM = 10;

//create the image array of size 10
PImage[] pusheen = new PImage[IMG_NUM];

//store a variable that we'll use to draw a selected image from the array
int whichPusheen = 0;

void setup() {
  size(500,500);
  imageMode(CENTER);
  
  //load all the images into our array
  for (int i = 0; i < pusheen.length; i++) {
    pusheen[i] = loadImage("pusheen"+i+".jpg");    
  }
}

void draw() {
  background(210);
  
  //draw the image in the array at index position "whichPusheen"
  image(pusheen[whichPusheen], width/2, height/2);
  
  //we've discussed now the modulo operator (%) just a little bit.
  //can you figure out what this conditional statement is looking for?
  if (frameCount % 10 == 0) {
    whichPusheen++;
  }
  
  //bring the index variable back down to zero if it gets out of the array scope
  if (whichPusheen >= pusheen.length) {
    whichPusheen = 0;
  }
}