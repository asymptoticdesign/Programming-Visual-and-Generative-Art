import ddf.minim.*;
import ddf.minim.analysis.*;
 
Minim minim;
AudioPlayer song;
FFT fft;
 
void setup(){
  size(512, 200);
  minim = new Minim(this);
  song = minim.loadFile("teleport.mp3", 1024);
  song.play();
  fft = new FFT(song.bufferSize(), song.sampleRate());
}
 
void draw(){
  background(0);
  //'forward' indicates a forward Fourier Transform on the track
  fft.forward(song.mix);
  stroke(255, 0, 0, 128);
  for(int i = 0; i < fft.specSize(); i++){
    line(i, height, i, height - fft.getBand(i)*10);
  }
}
 
void stop(){
  song.close();
  minim.stop();
  super.stop();
}
