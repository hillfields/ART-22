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
 * Paddle class:
 * The mouse's y-position controls the paddle
 * The paddle stays fixed in the x-position
 * The paddle stays within the window
 *
 * */

Paddle paddle; // initialize paddle

void setup() {
  size(600, 600); // set window size
  background(0);  // black background
  fill(255);      // white fill
  paddle = new Paddle(20, mouseY, 20, 100); // create new Paddle
}

void draw() {
  background(0);          // black background
  paddle.display(mouseY); // change paddle position based on mouse's y position
}
