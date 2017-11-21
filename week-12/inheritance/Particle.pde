class Particle {
  PVector pos;
  PVector vel;
  PVector acc;
  float speed;
  color c;
  float angle;
  float life;

  //constructor
  Particle(float x, float y) {
    pos = new PVector(x, y);
    angle = random(TWO_PI);
    speed = 3;
    vel = new PVector(cos(angle) * speed, sin(angle) * speed);
    c = color(random(150));
    life = 100;
  }

  void update() {
    angle += 0.05;
    life--;
    
    if (pos.x < life/2 || pos.x > width-life/2) {
      vel.x *= -1;
    }
    
    if (pos.y < life/2 || pos.y > height-life/2) {
      vel.y *= -1;
    }
    
    pos.x += vel.x;
    pos.y += vel.y;
  }
  
  void display() {
    
  }
}

class SquareParticle extends Particle {
  SquareParticle(float _x, float _y) {
    super(_x, _y);
  }
  
  void display() {
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(angle);
    noFill();
    stroke(0);
    rectMode(CENTER);
    rect(0, 0, life, life);
    popMatrix();
  }
}

class EllipseParticle extends Particle {
  EllipseParticle(float _x, float _y) {
    super(_x, _y);
  }
  
  void display() {
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(angle);
    stroke(0);
    ellipse(0, 0, life, life);
    popMatrix();
  }
}

class TriangleParticle extends Particle {
  TriangleParticle(float _x, float _y) {
    super(_x, _y);
  }
  
  void display() {
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(angle);
    stroke(0);
    triangle(-life, 0, life, 0, 0, -life);
    popMatrix();
  }
}