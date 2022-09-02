/*
 * Course: ART 22 - Computer Programming for the Arts
 * Assignment: Generative Typography with Objects
 *
 * by Justin Liu
 *
 * Initiated: 4/26/22
 * Last updated: 4/30/22
 *
 * PROCESSING REFERENCES:
 * 1. blendMode() (https://processing.org/reference/blendMode_.html)
 *
 * WHAT IT DOES:
 * Every second:
 *   The rectangles in the background change color
 *   The letters change positions
 *     The letter A is always in left third of the window
 *     The letter R is always in the middle third of the window
 *     The letter T is always in the right third of the window
 * Subtractive blending is used when colors overlap
 *
 * NOTE:
 * 1. WordART(0, 0, 0, 0, 0, 0) centers the word ART in the window (for reference)
 * 2. There are noticeable "gaps" when the lines of each letter intersect
 *    The reason is because the stroke color of the lines is the same (white)
 *    Subtractive blending "subtracts" the same color, so the resulting color is transparent
 *    This was not intentional - I originally planned to have none of these gaps
 *    However, the intersecting lines are needed to make the letters, so the gaps stay
 *
 * */

WordART wordART;

void setup() {
  size(600, 600);  // 600 by 600 pixels
  frameRate(1);    // 1 frame per second
  strokeWeight(7); // make lines thicker

  wordART = new WordART(0, 0, 0, 0, 0, 0); // initialize new WordArt class
}

void draw() {
  // draws random color rectangles in the background
  noStroke();                                    // turn off stroke
  for (int i = 0; i <= width; i += width/10) {   // 10 equally spaced
    fill(random(255), random(255), random(255)); // randomly colored
    rect(0, i, width, height/10);                // horizontal rectangles, top to bottom
  }

  // push() and pop() resets blendMode() every time draw() is run
  push();
  stroke(255);           // turn on stroke, white stroke
  blendMode(DIFFERENCE); // subtractive blending when colors overlap

  // randomly position the letters and display them
  wordART.update(random(-150, -50), random(-240, 240),
    random(-50, 50), random(-240, 240),
    random(50, 150), random(-240, 240));
  wordART.display();

  pop();
}
