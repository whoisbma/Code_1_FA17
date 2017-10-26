
class Ball {
  float x; //x position
  float y; //y position
  float dx;//x velocity
  float dy;//y velocity
  color c; //color
  float s; //size

  //constructor takes an x and a y value to set the ball's position
  Ball(float _x, float _y) {
    x = _x;
    y = _y;
    dx = random(-3, 3);
    dy = random(-3, 3);
    c = (int)random(150);
    s = random(10,50);
    println("created a ball!");
  }

  void display() {
    noStroke();
    fill(c);
    ellipse(x, y, s, s);
  }

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

}