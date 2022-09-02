class Paddle {
  // for positioning the paddles
  float xPos, yPos, widthSize, lengthSize; // constructor parameters
  String type;                             // either "horizontal" or "vertical" paddle
  float margin = 20;                       // how far paddles are from the sides

  // for updating the paddles' positions with arrow keys
  float paddleSpeed = 5;          // how fast the paddles move
  float dispX, dispY;             // displacement from the center
  float currentXPos, currentYPos; // x and y positions at the start of each frame

  // constraints for the paddles
  float minPaddleX, maxPaddleX, minPaddleY, maxPaddleY;

  // allows for multiple keys to be pressed at the same time
  boolean leftHeld = false;
  boolean rightHeld = false;
  boolean upHeld = false;
  boolean downHeld = false;

  // constructor
  Paddle(float xPos, float yPos, float widthSize, float lengthSize, String type) {
    this.xPos = xPos;
    this.yPos = yPos;
    this.widthSize = widthSize;
    this.lengthSize = lengthSize;
    this.type = type;

    // sets minimum x and y positions
    minPaddleX = margin;
    minPaddleY = margin;

    // sets maximum x and y positions, depending on the type of paddle
    if (type == "horizontal") {
      maxPaddleX = width - (widthSize + margin);
      //maxPaddleY = height - (paddleWidth + margin);
    } else if (type == "vertical") {
      //maxPaddleX = width - (paddleLength + margin);
      maxPaddleY = height - (widthSize + margin);
    }
  }

  // displays the paddle
  void display() {
    if (type == "horizontal") {                       // for a horizontal paddle
      currentXPos = xPos + dispX;                     // update the x position (move left/right)
      rect(currentXPos, yPos, widthSize, lengthSize); // then display it
    } else if (type == "vertical") {                  // for a vertical paddle
      currentYPos = yPos + dispY;                     // update the y position (move left/right)
      rect(xPos, currentYPos, lengthSize, widthSize); // for a horizontal paddle
    }
  }

  // updates the paddle's position
  void update() {
    if (leftHeld &&               // if the left button is pressed &
      currentXPos > minPaddleX) { // the paddle's x position has not crossed the min x position
      dispX -= paddleSpeed;       // move the paddle left
    }

    if (rightHeld &&              // if the right button is pressed &
      currentXPos < maxPaddleX) { // the paddle's x position has not crossed the max x position
      dispX += paddleSpeed;       // move the paddle right
    }

    if (upHeld &&                 // if the up button is pressed &
      currentYPos > minPaddleY) { // the paddle's y position has not crossed the min y position
      dispY -= paddleSpeed;       // move the paddle up
    }

    if (downHeld &&               // if the down button is pressed &
      currentYPos < maxPaddleY) { // the paddle's y position has not crossed the max y position
      dispY += paddleSpeed;       // move the paddle down
    }
  }
}
