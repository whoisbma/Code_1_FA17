//the definition for the Ball class

class Ball {
  float x;   //x position
  float y;   //y position
  float dx;  //x velocity
  float dy;  //y velocity

  //think of the constructor function as the setup() for the object instance.
  //notice there is no "void" or return type. Technically it returns itself (a Ball)
  //this constructor takes no arguments - it sets all fields automatically.
  Ball() {
    x = width/2;
    y = height/2;
    dx = random(-3, 3);  //set a random velocity
    dy = random(-3, 3);
    println("created a ball!");
  }

  // call this method to display the ball
  void display() {
    noStroke();
    fill(100);
    ellipse(x, y, 50, 50);
  }

  // call this method to update the ball's position
  void update() {
    //c = color(map(dist(mouseX,mouseY,x,y),0,100,255,0));
    if (x < 0 || x > width) {
      dx *= -1;
      x += dx;
    } else {
      x += dx;
    } 
    
    if (y < 0 || y > height) {
      dy *= -1;
      y += dy;
    } else { 
      y += dy;
    }
  }
}