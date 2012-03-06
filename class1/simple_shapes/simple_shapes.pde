//  Title: Programming Exercise 1 Solution
//  Description: Drawing some basic shapes to demonstrate primitives in Processing
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
//I don't need any for this sketch

//-----------------Setup
/*The code in setup() will only be run once in your sketch.  Use this space to set things up like
the sketch size, background color, framerate, etc. etc.*/
void setup(){
  size(256,256);
  background(255);
  noStroke();
  fill(0,255,128);
  rect(0,0,width,height);
  stroke(0,0,255);
  line(0,0,width,height);
  line(0,height,width,0);
  noFill();
  ellipse(width/2,height/2,50,50);
}

//-----------------Main Loop
/*This is the main loop of your sketched.  This loop gets called over and over again until you quit the sketch.*/
void draw(){
}
//-----------------Interactions
/*Place any interactions here.  We'll go over this later*/

//-----------------Defined Functions
/*Place any defined functions here.  We'll go over this later*/

//-----------------Defined Classes
/*Place any defined classes here.  We'll go over this later*/
