/*
 * Mask Project Template
 * Prof. Masood Kamandy
 *
 * Note: Put all of your code in the "testFace" tab.
 *
 * Leave this tab and the "volume" tab as they are.
 * You can set your variables at the top of "testFace".
 *
 * The UP and DOWN arrows will increase and decrease the
 * scalar applied to your volume.
 *
 * Based on code from Lorenzo Bravi:
 * http://www.lorenzobravi.com/projects/workshop-isia/
 */

float v;

void setup() {
  size(500, 500);
  smooth();
  setupVolume();
}

void draw() {
  // wall
  background(230, 230, 255);         // light purple background

  // floor
  noStroke();                        // don't outline whole rectangle
  fill(166, 123, 103);
  rect(0, 350, width, height - 350); // brown floor
  stroke(129, 98, 77);
  line(0, 350, width, 350);          // darker brown floor outline

  getVolume();

  if (mic == false) {
    v = mouseY;
  }

  testFace();
}
