//  Title: Data Visualization:
//  Description: Visualize 2d data by intensities.
//  Date Started: 24 Jan 2012
//  Last Modified: 24 Jan 2012
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

//-----------------Globals
float delta = 0.05;
float xnoise = 0;
float ynoise = 0;
float xstart = 0;
float len = 0;
float r = 20;

//-----------------Setup
void setup(){
  size(512,512);
  background(255);
  stroke(0,0,255,128);
  smooth();
  //frameRate(24);
  xnoise = random(17);
  xstart = xnoise;
  ynoise = random(17);
  for(int x = 0; x < width; x+=5){
    ynoise += delta;
    xnoise = xstart;
    for(int y = 0; y < height; y+=5){
      xnoise += delta;
      float angle = TWO_PI*noise(xnoise,ynoise);
      line(x,y,x+r*cos(angle),y+r*sin(angle));
    }
  }
  saveFrame("slope0.png");
}
