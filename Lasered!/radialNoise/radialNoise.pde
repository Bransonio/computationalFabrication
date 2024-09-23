// This sketch uses Perlin Noise to generate a wormhole. 

float rotVal = 0;
int numLines = 1500; // This changes the number of drawn lines. Higher values create denser output. 

void setup(){
  size(800,800);
  noLoop();
  
  // Styling
  pixelDensity(2); // For fancy screens.
  strokeWeight(.5);
  stroke(0,100);
}

void draw() {
  translate(width/2,height/2); // Center drawing origin

  // Loops through every drawn line
  for (int i = 0; i < numLines; i++) {
    float interval = noise(i/10); // Get noise value between 0.0 and 1.0. Divide i by 10 for smaller variance between steps.
    rotate(radians(interval)); // Rotate by random noise value.
    line(0,0,600,0); // Draw that line!
  }
}
