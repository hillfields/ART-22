class Ghost {
  // instance variables
  float xPos, yPos, diameter, xSpeed, ySpeed;
  float savedTime, passedTime;
  int xDirection = 1;
  int yDirection = 1;
  PImage photo;

  // constructor
  Ghost(float xPos, float yPos, int diameter, float xSpeed, float ySpeed) {
    this.diameter = diameter;
    this.xPos = xPos;
    this.yPos = yPos;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;

    // for hiding the ghost in the hard level
    this.savedTime = 0;
    this.passedTime = 0;

    // image settings
    imageMode(CENTER);              // reference image by center
    photo = loadImage("ghost.png"); // load image
    photo.resize(diameter, 0);      // resize image
  }

  // displays the ghost image
  void display() {
    image(photo, xPos, yPos);
  }

  // updates the ball's position every frame
  void update() {
    xPos += xSpeed * xDirection;
    yPos += ySpeed * yDirection;
  }

  // returns true if ball is touching a window edge, returns false otherwise
  boolean isTouchingWindowEdge() {
    if (leftSide() || rightSide() || topSide() || bottomSide()) {
      return true;
    } else {
      return false;
    }
  }

  // returns true if the ball is touching the right window edge, returns false otherwise
  boolean rightSide() {
    if (xPos + diameter/2 > width) {
      return true;
    } else {
      return false;
    }
  }

  // returns true if the ball is touching the left window edge, returns false otherwise
  boolean leftSide() {
    if (xPos - diameter/2 < 0) {
      return true;
    } else {
      return false;
    }
  }

  // returns true if the ball is touching the top window edge, returns false otherwise
  boolean topSide() {
    if (yPos - diameter/2 < 0) {
      return true;
    } else {
      return false;
    }
  }

  // returns true if the ball is touching the bottom window edge, returns false otherwise
  boolean bottomSide() {
    if (yPos + diameter/2 > height) {
      return true;
    } else {
      return false;
    }
  }
}

// collision detector function - returns true if ball is touching the horizontal paddle, returns false otherwise
boolean hitHorizontal(Paddle paddle, Ghost ghost) {
  if ((ghost.xPos + ghost.diameter/2 > paddle.currentXPos) &&                  // if right side of ball is to the right of left side of square
    (ghost.xPos - ghost.diameter/2 < paddle.currentXPos + paddle.widthSize) && // if left side of ball is to the left of right side of square
    (ghost.yPos + ghost.diameter/2 > paddle.yPos) &&                           // if bottom side of ball is below top side of square
    (ghost.yPos - ghost.diameter/2 < paddle.yPos + paddle.lengthSize)) {       // if top side of ball is above bottom side of square
    return true;
  } else {
    return false;
  }
}

// collision detector function - returns true if ball is touching the vertical paddle, returns false otherwise
boolean hitVertical(Paddle vertPaddle, Ghost vertGhost) {
  if ((vertGhost.xPos + vertGhost.diameter/2 > vertPaddle.xPos) &&                             // if right side of ball is to the right of left side of square
    (vertGhost.xPos - vertGhost.diameter/2 < vertPaddle.xPos + vertPaddle.lengthSize) &&       // if left side of ball is to the left of right side of square
    (vertGhost.yPos + vertGhost.diameter/2 > vertPaddle.currentYPos) &&                        // if bottom side of ball is below top side of square
    (vertGhost.yPos - vertGhost.diameter/2 < vertPaddle.currentYPos + vertPaddle.widthSize)) { // if top side of ball is above bottom side of square
    return true;
  } else {
    return false;
  }
}
