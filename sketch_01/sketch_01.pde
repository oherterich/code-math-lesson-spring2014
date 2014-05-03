// Code + Math - Spring 2014
// Example 1 - Breathing Circle 

void setup(){
 size(800,600);
  noStroke(); 
}

void draw(){
  background(255);
  
/* Sin is a wave that will have a different value from
   -1 to 1 depending on the number that you give to it.
   We put millis() inside the sin function because it is
   a number that is always changing, and therefore the values
   we receive from sin will be different. We multiply millis()
   by 0.005 in order to get smaller values. If we don't do this,
   the sin wave will move from -1 to 1 too quickly to notice. */
   
  
  float sinOfTime = sin( millis() * 0.005 );
  
  // Next, we just map our value from -1 to 1 into something
  // more useful: in this case, a radius of a circle.
  float sinMapped = map( sinOfTime, -1.0, 1.0, 100, 150 );
  
  fill(255,0,0);
  ellipse( width/2, height/2, sinMapped, sinMapped );
  
}
