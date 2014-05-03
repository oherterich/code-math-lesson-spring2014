// Code + Math - Spring 2014
// Example 6 - Noise vs. Random (Position)

// Create position variables for two circles.
float posX1;
float posY1;

float posX2;
float posY2;

void setup() {
  size(800, 600);
  noStroke();
  
  // Initialize position values to start in the middle of the screen.
  posX1 = width/2;
  posY1 = height/2;
  
  posX2 = width/2;
  posY2 = height/2;
}

void draw() {
  background(255);

  // For the first circle, we'll just add a random value from -1 to 1
  posX1 += random(-1,1);
  posY1 += random(-1,1);
  
  fill(255, 0, 0);
  ellipse(posX1, posY1, 50, 50);

  /*
  For the second circle, we change its position based on noise.
  First, we get two noise values: one for the x position, and
  one for the y. Notice that I added + 1000 in noiseY. This is because
  if we used the same noise value ( given by millis() ), the x and y
  positions would change with exactly the same values. Adding 1000
  gives noise an offset that simluates more natural and
  unpredictable movement
  */
  
  float noiseX = noise( millis() * 0.0003 );
  float noiseY = noise( millis() * 0.0003 + 1000 );

  /*
  Next, we change the values from their original 0 - 1 to a range
  that goes from -1 to 1. This is done just because we want the
  circle to move everywhere, not just in the positive direction.
  */ 
  posX2 += map(noiseX, 0, 1, -1, 1);
  posY2 += map(noiseY, 0, 1, -1, 1);

  fill(0, 255, 0);
  ellipse(posX2, posY2, 50, 50);
}

