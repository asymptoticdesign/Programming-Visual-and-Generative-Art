//  Title: Circle Example
//  Description: Part of an example about object-oriented programming
//  Date Started: 
//  Last Modified:
//  [Your website, portfolio, or other links]
//  [Feel free to change the license too!]
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

//-----------------Globals
/* These are variables that you want to exist throughout the entire sketch.*/
int numCircles = 5;

//-----------------Setup
/*The code in setup() will only be run once in your sketch.  Use this space to set things up like
the sketch size, background color, framerate, etc. etc.*/
void setup(){
  size(500,300);
  background(0);
  smooth();
  strokeWeight(1);
  frameRate(30);
  fill(150,50);
  drawCircles();
}

//-----------------Main Loop
/*This is the main loop of your sketched.  This loop gets called over and over again until you quit the sketch.*/
void draw(){
}

//-----------------Interactions
/*Place any interactions here.  We'll go over this later*/
void mouseReleased(){
 drawCircles(); 
}

//-----------------Defined Functions
/*Place any defined functions here.  We'll go over this later*/

void drawCircles(){
  for(int i = 0; i < numCircles; i++){
   float x = random(width);
   float y = random(height);
   float radius = random(75) + 25;
   noStroke();
   ellipse(x,y,2*radius,2*radius);
   stroke(0,150);
   ellipse(x,y,radius/2,radius/2);
  }
}

//-----------------Defined Classes
/*Place any defined classes here.  We'll go over this later*/
