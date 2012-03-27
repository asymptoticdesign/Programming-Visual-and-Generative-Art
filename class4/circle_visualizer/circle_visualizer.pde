import ddf.minim.*;
import ddf.minim.analysis.*;
 
Minim minim;
AudioPlayer song;
FFT fft;
 
void setup()
{
  size(500, 500);
 
  minim = new Minim(this);
  song = minim.loadFile("teleport.mp3", 1024);
  song.play();

  fft = new FFT(song.bufferSize(), song.sampleRate());
}
 
void draw()
{
  background(0);
  fft.forward(song.mix);
  //calcAvg calculates the average frequency between the high and low band
  float r = 100*fft.calcAvg(0,song.sampleRate()/4);;
  stroke(0, 0, 255, 128); 
  fill(0, 0, 255, 128);
  ellipse(250, 250, r, r);

  stroke(0, 128, 128, 128); 
  fill(0, 128, 128, 128);
  ellipse(250, 250, 0.75*r, 0.75*r);
  
  stroke(0, 255, 0, 128); 
  fill(0, 255, 0, 128);
  ellipse(250, 250, 0.5*r, 0.5*r);

}
 
void stop()
{
  song.close();
  minim.stop();
 
  super.stop();
}
