// Code + Math - Spring 2014
// Example 4 - Spiral

// This time we start the amplitude at a low number.
// We will increase this number in order to get the spiral effect.
float amplitude = 10;

void setup(){
 size(800,600);
  noStroke(); 
}

void draw(){
  
  // Same as the last sketch. Get our cos and sin for circlular movement.
  float time = millis() * 0.005;
  float posX = cos( time ) * amplitude + width/2;
  float posY = sin( time ) * amplitude + height/2;
  
  fill(255,0,0);
  ellipse( posX, posY, 5, 5 );
  
  /* 
  To get a spiral movement, we slowly increase the amplitude.
  This increases the radius between the center point of the circle
  we're moving around and the actual circle drawn on screen.
  */
  amplitude += 0.1;
}
