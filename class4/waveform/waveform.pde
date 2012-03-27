import ddf.minim.*;
Minim minim;
AudioPlayer song;
 
void setup(){
  size(512, 600); 
  minim = new Minim(this);
  song = minim.loadFile("teleport.mp3",512);
  song.play();
}

void draw(){
  background(0);
  stroke(255);
  for(int i = 0; i < song.bufferSize() - 1; i++){
    line(i, 200 + song.left.get(i)*100, i+1, 200 + song.left.get(i+1)*100);
    line(i, 400 + song.right.get(i)*100, i+1, 400 + song.right.get(i+1)*100);
  }
}
 
void stop(){
  song.close();
  minim.stop();
  super.stop();
}
