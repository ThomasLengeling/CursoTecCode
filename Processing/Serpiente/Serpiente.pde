
void setup() {
  size(640, 360);
  setupSerpiente();
}

void draw() {
  background(0);
  strokeWeight(9);
  stroke(255, 100);
  drawSerpiente(mouseX, mouseY);
}

