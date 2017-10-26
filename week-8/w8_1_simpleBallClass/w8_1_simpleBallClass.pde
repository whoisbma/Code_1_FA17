// create a single Ball object
Ball b;

void setup() {
  size(600, 600);
  //instantiate the Ball object by calling the constructor
  b = new Ball();
}

void draw() {
  background(255);
  //call the update and display methods of the Ball object
  b.update();
  b.display();
}