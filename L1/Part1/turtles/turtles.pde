import Turtle.*;

Turtle t;
// this draws an I, then a T

void setup() {
  size(800,800);
  t = new Turtle(this);
  noLoop();
  
  // Styling
  stroke(255, 191, 0); // amber
  strokeWeight(2);
  background(0);
}

void draw() {
  // Get Turtle in Position
  t.penUp();
  t.forward(10);
  t.left(90);
  t.forward(55);
  t.right(90);
  t.penDown();
  
  // Draw I
  t.right(180);
  t.forward(40);
  t.penUp();
  t.left(180);
  t.forward(40);
  t.right(90);
  t.forward(20);
  t.penDown();
  t.right(180);
  t.forward(40);
  t.penUp();
  t.right(180);
  t.forward(20);
  t.right(90);
  t.forward(40);
  t.left(90);
  t.forward(20);
  t.penDown();
  t.right(180);
  t.forward(40);
  t.penUp();
  t.right(180); // Go to new position
  t.forward(80);
  t.left(90);
  t.forward(40);
  
  // Draw italic T
  stroke(0,255,0);
  t.penDown();
  t.left(160);
  t.forward(43);
  t.penUp();
  t.right(180);
  t.forward(43);
  t.right(70);
  t.forward(20);
  t.penDown();
  t.left(180);
  t.forward(40);
  t.penUp();
  t.right(180); // Go to new position
  t.forward(65);
  //t.left(90);
  //t.forward(40);
  
  // Draw a triangle
  stroke(255,0,0);
  t.penDown();
  t.right(60);
  t.forward(48);
  t.right(120);
  t.forward(48);
  t.right(120);
  t.forward(48);
  t.penUp();
  t.right(150); // Go to new position
  t.forward(80);
  
  // Draw a pentagon
  stroke(0,0,255);
  t.penDown();
  t.right(90);
  t.forward(105);
  t.left(72);
  t.forward(105);
  t.left(72);
  t.forward(105);
  t.left(72);
  t.forward(105);
  t.left(72);
  t.forward(105);
  t.penUp();
  t.left(72); // Go to new position
  t.forward(105/2);
  t.left(90);
  t.forward(300);
  
  // Draw a circle
  t.penDown();
  stroke(0,200,200);
  t.left(90);
  for (int i = 0; i < 3600; i++) { // 360 degrees in circle / length of "side," in this case .1 == 3600
    stroke(map(i, 0, 3600, 0, 255), 0, 0); // for some class
    t.forward(.65);
    t.left(.1);
  }

  
  
  
  
  
  
  
}


// fades out background for nice drawing
void fadeBG() {
  push();
  fill(0, 10);
  stroke(0,10);
  rect(0,0,width,height);
  pop();
}
