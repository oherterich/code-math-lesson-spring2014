// Code + Math - Spring 2014
// Example 8 - Particles

//Create an array with a certain number of our Particle class (determined by numParticles).
int numParticles = 25;
Particle[] particles = new Particle[numParticles];

void setup() {
  size(800, 600);
  noStroke();

  // Initialize all of our particles to be created wherever the mouse is located.
  for (int i = 0; i < numParticles; i++) {
    particles[i] = new Particle( mouseX, mouseY );
  }
}

void draw() {
  background(0);

  // Loop througha and draw all of our particles.
  for (int i = 0; i < numParticles; i++) {
    particles[i].display();
  }
}

void mouseClicked() {
  // When we click, reset our particles to the new mouse position.
  for (int i = 0; i < numParticles; i++) {
    particles[i] = new Particle( mouseX, mouseY );
  }
}

