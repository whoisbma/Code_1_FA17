class Mario {
  float x;                // x position of Mario
  float y;                // y position of Mario
  boolean inAir;          // true if Mario is in the air from jumping or falling
  PImage[] spriteFrames;  // store all the images that are used to display mario
  int powerUpState;       // this integer tracks if Mario is big, small, has a fireflower, or is invincible
  int movementState;      // this integer tracks if Mario is running, 
  boolean direction;      // facing left or right?

  Mario() {
    //Mario constructor
  }
  
  void update() {
    //update Mario's state
  }

  void display() {
    //display Mario on the screen
    //animate Mario based on his state
  }

  void jump() {
    //make Mario jump
  }

  void run() {
    //speed up Mario's movement speed
  }

  void walk() {
    //make Mario walk
  }

  void duck() {
    //make Mario duck
  }

  void die() {
    //called when Mario dies
  }
  
  void fire() {
    //shoot a fireball
  }
}