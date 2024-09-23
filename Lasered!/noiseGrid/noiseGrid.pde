// This sketch draws a grid of rectangles. Each rectangle's rotation is based on the output of a 2D Perlin Noise function. 

import processing.svg.*;

int numPerLine = 100; // Adjust to increase # of rectangles. 

float columnWidth; // These are calculated ... 
float rowHeight;   // ... based on number per line in setup. 
float lineScale;   // This is the length of each rectangle. 

// If you uncomment "noLoop()" in setup, these floats facilitate animation of the output. 
float noiseFactor = .1;
float zNoise = 1;

void setup() {
  size(800, 800);
  columnWidth = width/numPerLine;
  rowHeight = height/numPerLine;
  lineScale = columnWidth; // Same as columnWidth, but separate in case I want to play with it. 

  beginRecord(SVG, "myNoiseRects.svg");
  
  // Styling
  strokeWeight(.5);
  stroke(0);
  noFill();
  rectMode(CENTER); // Easier drawing. 
  noLoop();
}


void draw() {
  background(255);
  for (int x = 0; x < numPerLine; x+= 1) {
    for (int y = 0; y < numPerLine; y+= 1) {
      push();
      translate(x * columnWidth + columnWidth/2, y * columnWidth + columnWidth/2); // This places drawing origin in center of grid box. 
      float rotationVal = noise(x*noiseFactor, y*noiseFactor, zNoise); // Get noise value between 0.0 and 1.0 based on coords.
      rotationVal = map(rotationVal, 0, 1, 0, TWO_PI); // Map noise value to range of TWO_PI. 
      rotate(rotationVal);
      rect(0,0, lineScale, 4); // Draw rotated rect. 
      pop();
    }
  }
  endRecord();
  zNoise += .01; // For animated output only. 
}
