class ParticleSystem {
  float x; 
  float y;
  ArrayList<Particle> p;

  ParticleSystem(float _x, float _y) {
    p = new ArrayList<Particle>();
    x = _x;
    y = _y;
  }

  void update() {
    Particle b = new Particle(x, y);
    p.add(b);

    for (int i = p.size()-1; i >= 0; i--) {
      Particle temp = p.get(i);
      temp.update();
      temp.display();
      if (temp.life < 0) {
        p.remove(i);
      }
    }
  }
}