/*
 * Course: ART 22  - Computer Programming for the Arts
 * Assignment: In Class Activity
 *
 * by Yanwen Chen and Justin Liu
 *
 * Initiated: 2022/04/06
 * Last updated: 2022/04/06
 *
 * CITATIONS: https://processing.org/reference/translate_.html
 *
 * NOTE: This is where you write any notes you would like
 * to leave yourself or others using your code.
 *
 * */
float rocketX=0.0; // original x- displacement of rocket
float rocketY=0.0; // original y- displacement of rocket
float speed=5.0;   // how fast rocket moves

void setup() {
  size(600, 600);
  noStroke();
}

void draw() {
  background(#C5FFF5);

  if (keyPressed) {
    if (keyCode==UP) {
      rocketY-=speed;
    } else if (keyCode==DOWN) {
      rocketY+=speed;
    }
  }
  
  //Source: https://processing.org/reference/translate_.html
  //draw a rocket
  translate(rocketX, rocketY);
  fill(255, 0, 0);
  triangle(300, 75, 250, 175, 350, 175);  // red triangle
  fill(255);
  rect(250, 175, 100, 250);               // white rectangle body
  fill(0);
  circle(300, 225, 80);                   // black bigger circle
  fill(255);
  circle(300, 225, 40);                   // white smaller circle (window)
  fill(255, 0, 0);
  triangle(250, 350, 250, 425, 175, 425); // left red flap
  triangle(350, 350, 350, 425, 425, 425);
  fill(0);
  rect(250, 425, 100, 25);                // black engine
  fill(#FF3C3C);
  triangle(250, 450, 350, 450, 300, 550); // reddish fire
  fill(#FFA33C);
  triangle(275, 450, 325, 450, 300, 525); // range fire
}
