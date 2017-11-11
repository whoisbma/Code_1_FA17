int[] myArray = new int[100];

void setup() {
  size(800, 800);
  
  for (int i = 0; i < myArray.length; i++) {
    myArray[i] = int(random(800));
  }
}

void draw() {
  background(255);
  for (int i = 0; i < myArray.length; i++) {
    line(myArray[i], 0, myArray[i], height);
    
    myArray[i]++;
    if (myArray[i] > width) {
      myArray[i] = 0;
    }
  }

}