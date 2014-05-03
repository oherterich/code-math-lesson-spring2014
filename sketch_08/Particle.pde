/*
This isn't really a lesson on particles, but I'll explain what is necessary
 to give you an idea of how noise is used to make particles more dynamic.
 */

class Particle {

  // Create position, velocity, and acceleration for our particle.
  // This is used to move it in a natural way.
  float posX;
  float posY;
  float velX;
  float velY;
  float accX;
  float accY;

  float transparency; // To fade or hide particles.
  float size; // Size of particle (radius)
  float age; // Total amount of time (in frames) that our particle will "live".
  float life; // This will increase over time. When it reaches the same number as age, we want to hide the particle
  float damping; // Used to slow down particles over time. Sort of like friction.

  Particle( float _posX, float _posY ) {
    // Initialize all of our variables.
    posX = _posX;
    posY = _posY;
    velX = 0;
    velY = 0;
    accX = random(-3, 3); 
    accY = random(-3, 3);
    transparency = 255;
    size = 10;
    age = 0;
    life = random(60, 80);
    damping = random( 0.98, 0.99 );
  }

  void display() {

    // Hide our particle if it has reached the end of its life.
    if ( age > life ) {
      transparency = 0;
    }

    /*
     This gives us the percentage of how long the particle has lived.
     For example, a particle with an age of 90 and life of 100 will have
     an agePct of 0.9
     */
    float agePct = ((float)age / (float)life);

    /*
    Noise! We want to get a noise value for both the x and y position.
     These will be based on a few things: the actual x and y position, and
     the time. We need to use the time because we want the value of the noise
     to change. This gives us the natural and somewhat unpredictable motion that
     noise does so well. We multiply by 25 in order to change the range from
     0 to 25 (instead of 0 to 1). This ultimately gives the particles more movement.
     */
    float noiseX = noise(posX * 0.005, millis() * 0.0005) * 25;
    float noiseY = noise(posY * 0.005, millis() * 0.0005) * 25;

    // Move our particle with velocity and acceleration.
    velX += accX;
    velY += accY;

    /* 
     Add the noise to our particle's position.
     Instead of being between 0 and 25, we want the number to be also have
     a negative compoment (remember that sin and cos are between -1 and 1). 
     This is then multiplied by the agePct. The "older" the particle is,
     the more noise is applied. This gives us a nice flourish as the particle
     sort of disappears.
     */
    posX += cos( noiseX ) * agePct;
    posY += sin( noiseX ) * agePct;
    posX += velX;
    posY += velY;

    // Change the size of the particle based on how old it is. Older = smaller.
    size = 10 * (1 - agePct);


    fill( 255, transparency );
    ellipse( posX, posY, size, size );

    age += 1.0; // particle gets older every frame
    accX = 0; // reset acceleration
    accY = 0;
    velX *= damping; // add some friction to the velocity to slow down particle
    velY *= damping;
  }
}

