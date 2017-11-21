class ParticleSystem {
  PVector pos;
  ArrayList<Particle> particles;

  ParticleSystem(float x, float y) {
    particles = new ArrayList<Particle>();
    pos = new PVector(x, y);
  }

  void update() {
    int r = int(random(3));
    switch (r) {
      case 0:
        EllipseParticle p1 = new EllipseParticle(pos.x, pos.y);
        particles.add(p1);
        break;
      case 1:
        SquareParticle p2 = new SquareParticle(pos.x, pos.y);
        particles.add(p2);
        break;
      case 2:
        TriangleParticle p3 = new TriangleParticle(pos.x, pos.y);
        particles.add(p3);
        break;
      default:
        break;
    }
    
    for (int i = particles.size()-1; i >= 0; i--) {
      Particle temp = particles.get(i);
      if (temp.life < 1) {
        particles.remove(i);
      }
      temp.update();
      temp.display();
    }
  }
}