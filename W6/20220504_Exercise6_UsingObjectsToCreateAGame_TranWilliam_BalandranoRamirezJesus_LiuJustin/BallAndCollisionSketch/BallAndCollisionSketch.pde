/*
 * Course: ART 22 - Computer Programming for the Arts
 * Assignment: Game Elements
 *
 * by William Tran, Jesus Balandrano Ramirez, and Justin Liu
 *
 * Initiated: 5/4/22
 * Last updated: 5/4/22
 *
 * CITATIONS:
 * Getting Started with Processing, Example 8-5
 *
 * Ball class:
 * The ball detects when it hits the top and bottom of the canvas and bounces in the other direction
 * If the ball hits the right side, it restarts on the left side again
 *
 * Collision funtion:
 * This function detects whether the ball hits the paddle
 *
 * */

// initialize variables
Paddle square;
Ball ball;

void setup() {
  size(600, 700); // set window size
  background(0);  // black background
  fill(255);      // white fill

  square = new Paddle(width/2 - 100, height/2 - 100, 200, 200); // create centered square (Paddle)
  ball = new Ball(250, 250, 20, 3, -4);                         // create new Ball
}

void draw() {
  background(0); // black background

  if (hitPaddle(square, ball)) { // if ball touches the square
    fill(255, 0, 0);             // make the square red
  } else {                       // otherwise
    fill(255);                   // make the square white
  }
  square.display(height/2 - 100); // draw square

  fill(255);      // white fill for ball
  ball.display(); // display the ball
  ball.update();  // update the ball's position
}
