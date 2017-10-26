
class Ball {
  float x;   //x position
  float y;   //y position
  float dx;  //x velocity
  float dy;  //y velocity
  color c;   //color
  float s;   //size

  //constructor takes an x, y, and color value
  Ball(float _x, float _y, color _c) {
    x = _x;
    y = _y;
    dx = random(-3, 3);  //set a random velocity
    dy = random(-3, 3);
    c = _c;
    s = random(10,50);   // set a random size
    println("created a ball!");
  }

  // call this method to display the ball
  void display() {
    noStroke();
    fill(c);
    ellipse(x, y, s, s);
  }

  // call this method to update the ball's position
  void update() {
    //c = color(map(dist(mouseX,mouseY,x,y),0,100,255,0));
    if (x < s/2 || x > width-s/2) {
      dx *= -1;
      x += dx;
    } else {
      x += dx;
    } 
    
    if (y < s/2 || y > height-s/2) {
      dy *= -1;
      y += dy;
    } else { 
      y += dy;
    }
  }
  
  // call this method to set the size of the ball (instead of accessing its' fields directly)
  void setSize(float siz) {
    s = siz;
  }
}