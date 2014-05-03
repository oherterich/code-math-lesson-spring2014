// Code + Math - Spring 2014
// Example 7 - Color Bands (Screensaver)


int size = 2; //This determines detail of the color bands. Higher numbers make it more "pixelated"
float mod = .01; //This changes the "resolution" of the noise. A higher number means a more fragmented image. 

void setup() {
 size(500,500);
  noStroke(); 
  colorMode(HSB, 255); // Change the color mode for easier color-shifting
}

void draw() {
  
  // We loop through and draw squares across the entire canvas.
  // The number of squares is determined by the size variable we set earlier.
  for( int x = 0; x < width; x+= size ) {
    for ( int y = 0; y < height; y+= size ) {
      /*
      Noise doesn't have to be determined by only one parameter. We can give it
      up to three. These are sometimes based on the x,y,z position of something.
      In this case, we're getting a hue based on both time and the positions
      of the squares. We use time because without this the colors would stay the
      same and not change. We also use the y position to change the hue because by
      doing this we can create bands of color - they are the same for all squares
      with the same y position.
      */
      
      float hue = noise(millis()*0.0003, y * mod) * 45;
      fill( hue, 210, 235 );
       rect(x, y, size, size);
    }
  }
  
}
