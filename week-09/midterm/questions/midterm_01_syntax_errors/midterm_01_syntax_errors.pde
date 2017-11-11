// QUESTION 1 - 
// Fix all the syntax errors so the code runs as expected.

void setup() {
  // we'll create a counter variable to count the frames
  int counter = 0:

  String welcomeMsg = "welcome to the first midterm question!"
  
  bool isCodeGreat = true;
  
  println(welcomeMsg);
  
  println('now we'll do a loop and print the iterating value!');

  for (int i = 0; i++; i < 3) 
    println("this is loop number " i);
  }

  flaot floatArray = new float[100];
  println("there are " + floatArray.size() + " positions in floatArray")
}

void draw() {
  // we'll increment counter every frame until 60, then reset
  if (0 < counter < 60) {
    counter+;
  } else {
    counter = 0;
  } 