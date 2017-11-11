//create an array of 100 balls
Ball[] b = new Ball[100];

void setup() {
  size(600, 600);
  
  //fill each position in the array with a Ball object
  for (int i = 0; i < b.length; i++) {
    b[i] = new Ball(width/2, height/2, color(map(i,0,b.length,0,255)));
  }
}

void draw() {
  background(255);
  
  //update and draw all the ball objects by calling their update() and display() methods
  for (int i = 0; i < b.length; i++) {
    b[i].update();
    b[i].display();
  }
  
  
}