// Code + Math - Spring 2014
// Example 3 - Circle Movement

/*
The amplitude is used in order to scale our
sin and cos to a different range. For example,
multiplying by 200 will give us the range -200 to 200.
*/
int amplitude = 200;

void setup() {
  size(800, 600);
  noStroke();
}

void draw() {
  background(255);

  float time = millis() * 0.003;
  
  /*
  In order to move in a circle, we need to get both
  sin and cos. They work together to give us a circular motion.
  Generally, cos is used to determine x position and sin is for
  y position, but this can be changed for a similar result.
  Because sin and cos are changing every frame, the position of our
  circle will also change. 
  */
  float posX = cos( time ) * amplitude + width/2;
  float posY = sin( time ) * amplitude + height/2;

  fill(255, 0, 0);
  
  // Draw our circle at the posX and posY we calculated before.
  ellipse( posX, posY, 50, 50 );
}

