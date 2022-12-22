// Exploring Perlin Noise Space
// December 22 2022
// Looking for patterns in discontinuities
// Matt Huts funeral today

float xoff = 0.0; // perlin noise offset
float fill = 0;
float stepSize = 25;
float y = 0;
int counter = 0;
float perlinNoiseStepSize = 0.02;

void setup() {
  background(0);
  size (1500, 1500); 
  // noLoop();
  stroke(255/2);
  frameRate(4);
}

void draw() {
  translate( stepSize * .5, stepSize * .5);
  for (float y =0; y < height; y = y + stepSize) {
    for (float x = 0; x <  width; x = x + stepSize) {
      xoff = xoff + perlinNoiseStepSize;
      int n = round(noise(xoff) * 655);
      fill(n);
      ellipse(x, y, stepSize - stepSize * 0.2, stepSize - stepSize * 0.2);
    }
  }
 // save("pattern_" + counter + ".png");
 // println("saved pattern_" + counter + ".png");
 // counter ++;
}

void mousePressed() {

  save("pattern_" + counter + ".png");
  println("saved pattern_" + counter + ".png");
  counter ++;
}
