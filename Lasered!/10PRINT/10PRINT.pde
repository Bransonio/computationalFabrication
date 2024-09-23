// This is a play on the classic 10PRINT generative art script on the Commodore 64.
// Unlike the original, text-based work, this version draws lines. The future is now!
import processing.svg.*;

int numPerLine = 100; // Adjust density of lines.

float columnWidth; // Calculated...
float rowHeight;   // ...in setup...
float lineScale;   // ...based on density.

void setup() {
  size(800, 800);
  beginRecord(SVG, "my10PRINT.svg");
  noLoop();

  columnWidth = width/numPerLine;
  rowHeight = height/numPerLine;
  lineScale = columnWidth; // Separate variable for tinkering.

  // Styling
  strokeWeight(1);
  stroke(125,130,242); // O.G. colors
  background(50,59,171);  

}

void draw() {
  // Loop through a grid.
  for (int x = 0; x < numPerLine; x+= 1) {
    for (int y = 0; y < numPerLine; y+= 1) {
      push();
      
      // Move drawing origin according to grid.
      translate(x * lineScale, y * lineScale); 
      
      // Generate random number to determine line.
      float rando = random(1); 
      //rando = noise(x/5,y/5); // (Uncomment this for some cool outputs!)
      
      // Depending on random value, draw line diagonally up, or diagonally down. 
      if (rando > .5) {
        line(0,0,lineScale, lineScale);
      }
      else {
        line(lineScale, 0, 0, lineScale);
      }
      
      pop();
    }
  }
  endRecord();
}
