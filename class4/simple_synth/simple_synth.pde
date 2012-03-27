import ddf.minim.*;
import ddf.minim.signals.*;
import ddf.minim.effects.*;

Minim minim;
AudioOutput audioOut;
SineWave sinusoid;

void setup(){
  size(512,128);
  minim = new Minim(this);
  audioOut = minim.getLineOut();
  sinusoid = new SineWave(440, 1, 44100);
  audioOut.addSignal(sinusoid);
}

void draw(){
  sinusoid.setFreq(mouseX);
}

void stop() {
  super.stop();
  minim.stop();
}

