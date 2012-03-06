//  Title: Rectangles (Soln 4)
//  Description: Solution for Modification 4 to Rectangles
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
int number_of_squares = 10;
int count = 0;
int height = 128;
int width = 500;
float square_size = width / number_of_squares;

//-----------------Setup
/*The code in setup() will only be run once in your sketch.  Use this space to set things up like
the sketch size, background color, framerate, etc. etc.*/
void setup(){
  size(width,height);
  background(255);
  smooth();
  stroke(0);
  fill(0,0,255);
  for(int i=0;i < number_of_squares;i++){
    fill(0,i*(255/number_of_squares),0);
    rect(i*square_size,0,square_size,height);
  }
}

//-----------------Main Loop
/*This is the main loop of your sketched.  This loop gets called over and over again until you quit the sketch.*/
void draw(){
  for(int i=0; i < number_of_squares;i++){
    fill(0,i*(255/number_of_squares),count);
    rect(i*square_size,0,square_size,height);
  }
  count++;
}
//-----------------Interactions
/*Place any interactions here.  We'll go over this later*/

//-----------------Defined Functions
/*Place any defined functions here.  We'll go over this later*/

//-----------------Defined Classes
/*Place any defined classes here.  We'll go over this later*/
