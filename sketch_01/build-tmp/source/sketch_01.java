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

public class sketch_01 extends PApplet {



public void setup(){
 size(800,600);
  noStroke(); 
}

public void draw(){
  background(255);
  
  float sinOfTime = sin( millis() * 0.005f );
  float sinMapped = map( sinOfTime, -1.0f, 1.0f, 100, 150 );
  
  fill(255,0,0);
  ellipse( width/2, height/2, sinMapped, sinMapped );
  
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "sketch_01" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
