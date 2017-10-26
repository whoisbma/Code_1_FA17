//create an empty ArrayList - an empty dynamic collection type - that will accept type Ball
ArrayList<Ball> balls = new ArrayList<Ball>();

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  //loop through everything in the ArrayList
  for (int i = 0; i < balls.size(); i++) {
    //create a temporary Ball object, point it to the one in the arraylist
    //call the update and display method of that arraylist Ball
    Ball b = balls.get(i);
    b.update();
    b.display();
  }
  
  fill(0);
  textAlign(CENTER,CENTER);
  textSize(20);
  text("click on the canvas", width/2, height/2);
}

void mousePressed() {
  //when the mouse is pressed, add a new instance of a Ball object to the ArrayList
  balls.add(new Ball(mouseX,mouseY));
}