ParticleSystem particleSystem;

void setup() {
  size(1200, 800);
  
  particleSystem = new ParticleSystem(width/2, height/2);
}

void draw() {
  background(255);
  particleSystem.update();
} 