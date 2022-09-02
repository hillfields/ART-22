class Ball {
  // instance variables
  float xPos, yPos, diameter, xSpeed, ySpeed;
  int direction = 1;

  // constructor
  Ball(float xPos, float yPos, float diameter, float xSpeed, float ySpeed) {
    this.diameter = diameter;
    this.xPos = xPos;
    this.yPos = yPos;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
  }

  // display method
  void display() {
    ellipse(xPos, yPos, diameter, diameter);
  }

  // update method - updates the ball's position every frame
  void update() {
    xPos += xSpeed;
    yPos += ySpeed * direction;

    if (detectBounce()) {     // if ball touches the top or bottom of the window
      direction = -direction; // change its direction
    }

    if (rightSide()) {        // if the ball touches the right side of the window
      xPos = diameter/2;      // reset the ball's position onto the left side of the window
      ySpeed = random(2, 10); // randomize ySpeed (changes angle as well)
    }
  }

  // if top of the ball touches top or bottom of the window, return true
  // otherwise, return false
  boolean detectBounce() {
    if ((yPos - diameter/2 < 0) || (yPos + diameter/2 > height)) {
      return true;
    } else {
      return false;
    }
  }

  // if the ball touches the right side of the window, return true
  // otherwise, return false
  boolean rightSide() {
    if (xPos + diameter/2 > width) {
      return true;
    } else {
      return false;
    }
  }
}

// collision detector function
// returns true if ball touches paddle, returns false otherwise
boolean hitPaddle(Paddle paddle, Ball ball) {
  if ((ball.xPos + ball.diameter/2 > paddle.xPos) && // if right side of ball is to the right of left side of square
    (ball.xPos - ball.diameter/2 < paddle.xPos + paddle.w) && // if left side of ball is to the left of right side of square
    (ball.yPos + ball.diameter/2 > paddle.yPos) && // if bottom side of ball is below top side of square
    (ball.yPos - ball.diameter/2 < paddle.yPos + paddle.h)) { // if top side of ball is above bottom side of square
    return true;
  } else {
    return false;
  }
}
