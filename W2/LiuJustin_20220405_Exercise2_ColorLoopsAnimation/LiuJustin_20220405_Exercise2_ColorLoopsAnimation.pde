/*
 * Course: ART 22  - Computer Programming for the Arts
 * Assignment: For Loop & Repetition
 *
 * by Justin Liu
 *
 * Initiated: 4/4/22
 * Last updated: 4/5/22
 *
 * CITATIONS:
 * N/A
 *
 * NOTE:
 * Hovering over a circle hides the circles in the same column and row.
 *
 * */

void setup() {
  size(600, 600); // 600 x 600 pixels
  noStroke();     // disable strokes
  background(0);  // black background
  frameRate(15);  // 15 frames per second
}

void draw() {
  for (int x = 30; x <= width - 30; x += 20) {    // rows
    for (int y = 30; y <= height - 30; y += 20) { // columns
      float r = random(255); // randomize red value
      float g = random(255); // randomize blue value
      float b = random(255); // randomize green value

      fill(r, g, b);    // randomize color
      circle(x, y, 15); // draw circle with radius of 15 pixels

      fill(0);                                  // black color
      rect(mouseX - (mouseX % 20), 0, 20, 600); // black column
      rect(0, mouseY - (mouseY % 20), 600, 20); // black row
    }
  }
}
