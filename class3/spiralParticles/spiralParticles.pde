//  Title: Noisy Spiral (Animated)
//  Description: An example of using noise to make animations more interesting
//  Date Started: 2012 Mar 09
//  Last Modified: 2012 Mar 13
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
float rad = 0;
float theta = 0;
float centX, centY;
float lastx = 250;
float lasty = 250;
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
  fill(255,128);
}

//-----------------Main Loop
void draw() {
  rect(0,0,width,height);
}

class Particle { 
  float seed;
  float x_position;
  float y_position;
  float theta_vel;
  float lastX;
  float lastY;
  
  Particle(float seedValue, float curr_x, float curr_y, float thetaVelocity) { 
    seed = seedValue;
    x_position = curr_x;
    y_position = curr_y;
    theta_vel = thetaVelocity;
  }

  void display() {
    line(lastX,lastY,x_position,y_position);
  }

  void update() {
    seed += 0.5;
    rad += 20*noise(seed) - 5;
    theta += 5;
    float x_position = centX + rad*cos(radians(theta));
    float y_position = centY + rad*sin(radians(theta));
    }
  }

