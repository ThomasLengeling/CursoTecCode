/**
 * Follow 3  
 * based on code from Keith Peters. 
 * 
 * A segmented line follows the mouse. The relative angle from
 * each segment to the next is calculated with atan2() and the
 * position of the next is calculated with sin() and cos().
 */


float segLength = 18;

float[] y = new float[20];
float[] x = new float[20];

void drawSerpiente(float posx, float posy) {
  dragSegment(0, posx, posy);
  for (int i=0; i< x.length-1; i++) {
    dragSegment(i+1, x[i], y[i]);
  }
}


void dragSegment(int i, float xin, float yin) {
  float dx = xin - x[i];
  float dy = yin - y[i];
  float angle = atan2(dy, dx);  
  x[i] = xin - cos(angle) * segLength;
  y[i] = yin - sin(angle) * segLength;
  segment(x[i], y[i], angle);
}

void segment(float x, float y, float a) {
  pushMatrix();
  translate(x, y);
  rotate(a);
  line(0, 0, segLength, 0);
  popMatrix();
}

