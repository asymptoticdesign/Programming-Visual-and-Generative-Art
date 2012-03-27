import codeanticode.gsvideo.*;

GSCapture cam;

void setup() {
  size(640, 480);
  cam = new GSCapture(this, 640, 480);
  cam.start();  
}

void draw() {
  if (cam.available() == true) {
    cam.read();
    image(cam, 0, 0);
  }
}
