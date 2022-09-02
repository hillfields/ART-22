/*
 * Course: ART 22 - Computer Programming for the Arts
 * Assignment: Final Proposal
 *
 * by Justin Liu
 * 
 * Initiated: 5/22/22
 * Last updated: 5/22/22
 * 
 * CITATIONS:
 * 1. Clock Example (https://processing.org/examples/clock.html)
 *
 * NOTE:
 * Rough prototype of the computer screen to be used in the final project
 * 
 * */

void setup() {
  size(1280, 800);
  textAlign(LEFT, TOP);
  noStroke();
}

void draw() {
  // top bar
  fill(170);
  rect(0, 0, width, 30);
  
  // left side of top bar
  fill(50);
  textSize(15);
  text("File", 20, 5);
  text("Edit", 70, 5);
  text("Window", 120, 5);
  text("Help", 195, 5);
  
  // right side of top bar (time)
  int h = hour();
  int m = minute();
  String time = nf(h, 2) + ":" + nf(m, 2);
  text(time, 1225, 5);

  // folders (1st column)
  rect(1160-150, 60, 90, 90);
  rect(1160-150, 180, 90, 90);
  rect(1160-150, 300, 90, 90);
  rect(1160-150, 420, 90, 90);
  rect(1160-150, 540, 90, 90);
  
  // folders (2nd column)
  rect(1160, 60, 90, 90);
  rect(1160, 180, 90, 90);
  rect(1160, 300, 90, 90);
  rect(1160, 420, 90, 90);
  rect(1160, 540, 90, 90);

  // bottom bar
  fill(170);
  rect(0, height-80, width, 80);
  
  // apps (placeholders for now)
  fill(255);
  rect(30, height-80, 80, 80);
  fill(0);
  rect(110, height-80, 80, 80);
  fill(255);
  rect(190, height-80, 80, 80);
  fill(0);
  rect(270, height-80, 80, 80);
}
