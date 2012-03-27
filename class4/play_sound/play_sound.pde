import ddf.minim.*;
Minim minim;
AudioPlayer player;

void setup() {
  minim = new Minim(this) ;
  player = minim.loadFile("knocking-1.wav");
}

void draw(){
}

void stop(){
  player.close();
  minim.stop();
  super.stop();
}

void mousePressed() {
  player.play(0) ;
}

