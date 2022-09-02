class Paddle {
  // instance variables
  float xPos, yPos, w, h;

  // constructor
  Paddle(float xPos, float yPos, float w, float h) {
    this.xPos = xPos;
    this.yPos = yPos;
    this.w = w;
    this.h = h;
  }

  // display method
  void display(float currentYPos) {
    yPos = constrain(currentYPos, 0, height-h); // keep paddle in window
    rect(xPos, yPos, w, h);                     // draw paddle
  }
}
