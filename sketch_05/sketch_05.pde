// Code + Math - Spring 2014
// Example 5 - Noise vs. Random (Color

void setup() {
  size( 500, 500 );
  noStroke();
}

void draw() {
  background(255);


  /*
  Noise is a sort of controlled random value. Instead of being totally
  random, it bases the current random value on the previous.
  This gives us smooth transitions between values, but in a random way.
  Noise is similar to sin and cos in that it will return a different
  value based on the number you put in the parentheses. Instead of
  being from -1 to 1, the number is from 0 to 1.
  Here we are just getting a value based on the time (always changing)
  and multiplying it by 255 in order to get a color.
  */
  float grey = noise( millis() * 0.0005 ) * 255;
  fill( grey );
  ellipse( width/2, height/2, 250, 250 );

  // Draw another circle where the color is based on purely random
  // values. It looks crazy.
  float randomGrey = random( 255 );
  fill( randomGrey );
  ellipse( width/2, height/2, 50, 50 );

}
