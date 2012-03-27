//  Title: Keyboard Example
//  Description: Example of how to use mouse and keyboard data in a sketch
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
Circle[] circleArray = {};
int blueChannel = 0;
color circleColor = color(0,255,blueChannel);

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
  background(0);
  for(int i = 0;i < circleArray.length;i++){
    Circle circleInstance = circleArray[i];
    circleInstance.update();
    circleInstance.display();
  }
}

//-----------------Interactions
/*Place any interactions here.  We'll go over this later*/
void mouseReleased(){
 drawCircles(); 
}

void keyPressed(){
  if (key == CODED) {
    if (keyCode == UP) {
      blueChannel += 25;
      circleColor = color(0,255,blueChannel);
    }
    else if (keyCode == DOWN) {
      blueChannel -= 25;
      circleColor = color(0,255,blueChannel);
    }
  }
}

//-----------------Defined Functions
/*Place any defined functions here.  We'll go over this later*/
void drawCircles(){
   Circle circleInstance = new Circle(circleColor);
   circleInstance.display();
   circleArray = (Circle[])append(circleArray,circleInstance);
}

//-----------------Defined Classes
/*Place any defined classes here.  We'll go over this later*/
class Circle {
  float x,y,radius,velocityX,velocityY;
  color lineColor, fillColor;
  
  Circle(color circleFill) {
    x = mouseX;
    y = mouseY;
    radius = random(75) + 25;
    lineColor = color(random(255));
    fillColor = circleFill;
    velocityX = random(10) - 5;
    velocityY = random(10) - 5;
  }
  
  void display() {
   noStroke();
   fill(fillColor);
   ellipse(x,y,2*radius,2*radius);
   stroke(lineColor,150);
   noFill();
   ellipse(x,y,radius/2,radius/2); 
  }  
  
  void update() {
    x += velocityX;
    y += velocityY;
    if (x > (width + radius)){
      x = 0 - radius;
    }
    if (x < (0 - radius)){
      x = width + radius;
    }
    if (y > (height + radius)){
      y = 0 - radius;
    }
    if (y < (0 - radius)){
      y = height + radius;
    }
  }
}
