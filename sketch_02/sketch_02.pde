// Code + Math - Spring 2014
// Example 2 - Wave movement

void setup() {
  size(800, 600);
  noStroke(); 
  colorMode(HSB, 255); //Change the color mode - easier to change colors
}

void draw() {
  background(255);

  // Get the value of sin at the current time (same as last sketch)
  float time = millis() * 0.005;
  float sinOfTime = sin( time );

  // We change the hue based on the sin value. It should slowly
  // move back and forth between 15 and 35 ( sinofTime * 10 + 25 )
  fill( sinOfTime * 10 + 25, 255, 255);

  /* 
   We will also move our circle based on sin.
   The x position is determined by the time (constantly increasing),
   but the y position changes with sin. Once again, we use a bit
   of arithmetic to manipulate the -1 to 1 values into something
   that we want. 
   */
  ellipse( millis() * 0.1, (sinOfTime * 100) + height/2, 50, 50 );
}

