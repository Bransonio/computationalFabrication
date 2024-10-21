// ExampleLSystemDesigns - contains initialization methods
// to set up parameters and init the LSystem (from the main file)

import java.util.HashMap;

// [TODO]: create your own L-System initialization methods
// and use/test in the setup() method of L1LSystemAssignment file. 
// See example for Square Lsystem below.
// [SOLUTION]: Below!

// Square Lsystem initialization 
// This method returns an Lsystem object that uses
// The rules and axioms for a square based system
LSystem initSquare() {
  // initialize turtle variables
  float moveDist = 10;
  float rotateAngle = 30;
  float scaleFactor = 1;
  
  // The intial axiom / input string
  String axiom = "F+F+F+F";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('F', "F+F-F-FF+F+F-F");
    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}

// My first custom L-system. Found it while playing around.
LSystem init1() {
  // initialize turtle variables
  strokeWeight(.5);
  stroke(255);
  float moveDist = 10;
  float rotateAngle = 120;
  float scaleFactor = .2;
  
  // The intial axiom / input string
  String axiom = "F+F+F+";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('F', "+F+F");
    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}

// This second system borrows heavily from examples on Wikipedia in an attempt to figure out how realistic plant designs
// are simulated. Instead of a plant, I made a city. https://en.wikipedia.org/wiki/L-system
LSystem init2() {
  // initialize turtle variables
  strokeWeight(1);
  float moveDist = 10;
  float rotateAngle = 90;
  float scaleFactor = .4;
  stem = true; // begins drawing from bottom of window
  
  String axiom = "D"; // This character is not drawn. D for dummy.
  
  // Production Rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('F', "FF");
  rules.put('D', "F-[[D]+D]+F[+FD]-D");
      
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}

// Dandelion-like. Yippee.
LSystem init3() {
  // initialize turtle variables
  strokeWeight(.5);
  stroke(0,255,0);
  float moveDist = 10;
  float rotateAngle = 45;
  float scaleFactor = .04;
  stem = true; // begins drawing from bottom of window
  
  // The intial axiom / input string
  String axiom = "D"; // This character is not drawn.
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('D', "DF");
  rules.put('F', "F[FB+FB+FB+FB+FB+FB+FB+FB]");
    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}
