//  Title: Circle Template
//  Description: An example of using noise to make animations more interesting
//  Date Started: 2012 Mar 09
//  Last Modified: 2012 Mar 09
//  http://asymptoticdesign.wordpress.com/
//  This work is licensed under a Creative Commons 3.0 License.
//  (Attribution - NonCommerical - ShareAlike)
//  http://creativecommons.org/licenses/by-nc-sa/3.0/
//
//  In summary, you are free to copy, distribute, edit, and remix the work.
//  Under the conditions that you attribute the work to me, it is for
//  noncommercial purposes, and if you build upon this work or otherwise alter
//  it, you may only distribute the resulting work under this license.
//
//  Of course, the conditions may be waived with permission from the author.
//

//-----------------Globals
/* These are variables that you want to exist throughout the entire sketch.*/
float rad = 10;
float centX, centY;
float seed = random(17);

//-----------------Setup
/*The code in setup() will only be run once in your sketch.  Use this space to set things up like
 the sketch size, background color, framerate, etc. etc.*/
void setup() {
  //setup the sketch parameters
  size(500, 500); 
  background(255);
  //object color properties
  stroke(30, 50, 70, 128);
  noFill();
  strokeWeight(5);
  smooth();
  //setup some reference variables
  centX = width/2;
  centY = height/2;
  //draw a reference circle
  ellipse(centX, centY, 100, 100);
  //now draw the part-by-part circle
  stroke(30, 50, 70);
  for (int i = 0; i < 25; i += 1) {
    float lastx = 250;
    float lasty = 250;
    rad = 0;
    for (float theta = 0; theta <= 1440; theta += 5) {
      seed += 0.5;
      rad += 20*noise(seed) - 10;
      float x = centX + rad*cos(radians(theta));
      float y = centY + rad*sin(radians(theta));
      line(lastx, lasty, x, y);
      lastx = x;
      lasty = y;
    }
  }
}

//-----------------Main Loop
void draw() {
}

