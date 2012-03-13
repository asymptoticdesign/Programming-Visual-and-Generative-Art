float lastY = 50;
float seedY = random(17);

void setup(){                                                                                                                                                                                                  
  size(500,100);
  background(255);
  smooth();
  strokeWeight(5);
  stroke(20,50,70,128);
  line(20,50,480,50);
  stroke(20,50,70);
  noisyLine(20,50,480,10);
}

void noisyLine(int startX, int startY, int endX, int step){
  for(int x = startX;x < endX;x += step){
    seedY += 0.2;
    float randomY = 50*noise(seedY) - 25;
    line(x,lastY,x+step,startY+randomY);
    lastY = startY + randomY;
  }
}
