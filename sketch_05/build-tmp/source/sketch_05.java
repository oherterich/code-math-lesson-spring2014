import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class sketch_05 extends PApplet {



public void setup() {
	size( 500, 500 );
	noStroke();
}

public void draw() {
	background(255);



	float grey = noise( millis() * 0.0005f ) * 255;
	fill( grey );
	ellipse( width/2, height/2, 250, 250 );

		float randomGrey = random( 255 );
	fill( randomGrey );
	ellipse( width/2, height/2, 50, 50 );

}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "sketch_05" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
