//  Title: Data Input
//  Description: An example for how to use a CSV file of numbers to input data to Processing
//  Date Started: 2012 Mar 26
//  Last Modified: 2012 Mar 27
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
int[] data;

//-----------------Setup
/*The code in setup() will only be run once in your sketch.  Use this space to set things up like
the sketch size, background color, framerate, etc. etc.*/
void setup(){
  size(512,300);
  background(0);
  smooth();
  noStroke();
  String[] dataFile = loadStrings("data.txt");
  String[] numbers = split(dataFile[0],',');
  data = int(numbers);
  for (int i = 0; i < data.length; i++) {
    fill(data[i]);
    rect(i*20,height-data[i],20,data[i]);
}
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
