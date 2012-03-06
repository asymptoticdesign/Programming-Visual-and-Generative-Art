//  Title: Simple Droplet 1
//  Description: A simple example for Programming Visual and Generative Art
//  Date Started: 2012 Feb 24
//  Last Modified: 2012 Feb 24
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
int diam = 100;
float centX, centY;

//-----------------Setup
/*The code in setup() will only be run once in your sketch.  Use this space to set things up like
the sketch size, background color, framerate, etc. etc.*/
void setup(){
  size(500,300);
  background(64,0,196);
  centX = width/2;
  centY = height/2;
  stroke(0,0,255);
  strokeWeight(1);
  fill(255,25);
  ellipse(centX,centY,diam,diam);
}
