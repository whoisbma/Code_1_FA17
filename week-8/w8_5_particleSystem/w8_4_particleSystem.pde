ArrayList<ParticleSystem> systems = new ArrayList<ParticleSystem>();

void setup() {
  size(1200, 800);
}

void draw() {
  background(255);
  
  for (int i = 0; i < systems.size(); i++) {
    ParticleSystem t = systems.get(i);
    t.update();
  }
  
  textAlign(CENTER,CENTER);
  fill(0);
  textSize(20);
  text("click on the canvas to create particle system objects", width/2, height/2);
} 

void mousePressed() {
  systems.add(new ParticleSystem(mouseX,mouseY));
}