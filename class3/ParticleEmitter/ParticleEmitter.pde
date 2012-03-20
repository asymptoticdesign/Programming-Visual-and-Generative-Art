//-----------------Globals
/* These are variables that you want to exist throughout the entire sketch.*/
Particle[] particleArray = {};

//-----------------Setup
/*The code in setup() will only be run once in your sketch.  Use this space to set things up like
the sketch size, background color, framerate, etc. etc.*/
void setup(){
  size(500,500);
  background(0);
  smooth();
  frameRate(30);
  fill(150,50);
}

//-----------------Main Loop
/*This is the main loop of your sketched.  This loop gets called over and over again until you quit the sketch.*/
void draw(){
  background(0);
}

//-----------------Interactions
/*Place any interactions here.  We'll go over this later*/
void mouseReleased(){
}

//-----------------Defined Classes
/*Place any defined classes here.  We'll go over this later*/
class Particle {
  //particle properties go here
  //each particle should have a position and velocity, as well as color (at minimum; feel free to add more!)
  
  //this is the constructor
  Particle() {
  }
  
  //and these are the methods
  void display() {
  }  
  
  void update() {
  }
}
