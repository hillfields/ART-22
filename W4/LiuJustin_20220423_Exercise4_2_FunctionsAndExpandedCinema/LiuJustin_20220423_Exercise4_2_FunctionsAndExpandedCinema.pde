/*
 * Course: ART 22 - Computer Programming for the Arts
 * Assignment: Generative Typography with Functions
 *
 * by Justin Liu
 *
 * Initiated: 4/18/22
 * Last updated: 4/23/22
 *
 * PROCESSING REFERENCES:
 * 1. scale() (https://processing.org/reference/scale_.html)
 *
 * WHAT IT DOES:
 * I wanted to draw the word "ART" based on katakana characters (katakana is a Japanese syllabary)
 * Every time draw() is run:
 *   Randomize the position of the letters with translate()
 *   Randomize the size of the letters with scale()
 *   Randomize the thickness of the letters with strokeWeight()
 *   Randomize the color stroke of the letters with stroke()
 *     Black strokes appears with 14/15 chance (so there are more black letters)
 *     Other random color strokes appear with 1/15 chance
 *
 * */

float randomStrokeWeight, redVal, blueVal, greenVal;

void setup() {
  size(600, 600);  // 600 by 600 pixels
  background(255); // white background
  stroke(0);       // black stroke
  frameRate(20);   // 20 frames per second (with permission from instructor)
}

void draw() {
  translate(random(width+200), random(height)); // randomizes position
  scale(random(0, 1));                          // randomizes size
  randomStrokeWeight = random(2, 14);           // randomizes thickness

  // randomizes color
  if (int(random(0, 15)) == 1) { // 1/15 chance of random color stroke
    redVal = random(255);
    blueVal = random(255);
    greenVal = random(255);
  } else {                       // 14/15 chance of black stroke
    redVal = 0;
    blueVal = 0;
    greenVal = 0;
  }

  // draw the word ART with randomized thickness and colors
  drawART(randomStrokeWeight, redVal, blueVal, greenVal);
}

// draws the word ART with thickness and color parameters
void drawART(float thickness, float r, float g, float b) {
  drawA(thickness, r, g, b);
  drawR(thickness, r, g, b);
  drawT(thickness, r, g, b);
}

// draws the letter A with thickness and color parameters
void drawA(float thickness, float r, float g, float b) {
  strokeWeight(thickness); // thickness of lines
  stroke(r, g, b);         // stroke color

  // draw letter A
  line(-200, -50, -240, 50);
  line(-240, 50, -175, 12.5);
  line(-190, -25, -160, 50);
}

// draws the letter R with thickness and color parameters
void drawR(float thickness, float r, float g, float b) {
  strokeWeight(thickness); // thickness of lines
  stroke(r, g, b);         // stroke color

  // draw letter R
  line(-140, -40, -60, -50);
  line(-60, -50, -70, -30);
  line(-130, -50, -120, 50);
}

// draws the letter T with thickness and color parameters
void drawT(float thickness, float r, float g, float b) {
  strokeWeight(thickness); // thickness of lines
  stroke(r, g, b);         // stroke color

  // draw letter T
  line(-40, -50, 40, -50);
  line(40, -50, 25, -35);
  line(0, -40, 0, 40);
  noFill();
  arc(-10, 40, 20, 20, 0, PI/2);
}
