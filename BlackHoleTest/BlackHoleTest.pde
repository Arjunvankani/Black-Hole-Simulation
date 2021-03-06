// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

// Thank you Chris Orban!
// https://www.asc.ohio-state.edu/orban.14/stemcoding/blackhole.html

Particle[] particles;
Blackhole b;

void setup() {
  size(640, 640);
  b = new Blackhole(320, 320);
  particles = new Particle[200];
  for (int i = 0; i < 200; i++) {
    particles[i] = new Particle(random(width), 1000);
  }
}

void draw() {
  background(255);

  for (Particle p : particles) {
    PVector force = b.attract(p);
    p.applyForce(force);
    p.update();

    p.display();
    b.display();
  }
}
