class MenuButton {
  float xPos, yPos; // top left corner of box
  String funcName;  // name of button

  float textWidth, textHeight, marginWidth; // text sizes
  float centerTextX, centerTextY;           // coordinates to center text in the button
  float buttonWidth, buttonHeight;          // button width and height

  // constructor
  MenuButton(float xPos, float yPos, String funcName) {
    this.xPos = xPos;
    this.yPos = yPos;
    this.funcName = funcName;

    // text settings
    textSize(15);         // set text size
    textAlign(LEFT, TOP); // reference text by top left coordinate

    // get text size to figure out how to center the text
    textWidth = textWidth(funcName);
    textHeight = textDescent() + textAscent();

    // space around the left and right side of the text
    marginWidth = 10;

    // button width and height
    buttonWidth = textWidth + 2*marginWidth;
    buttonHeight = 30;

    // centers the text in the button
    centerTextX = (xPos + (xPos + buttonWidth))/2 - (textWidth / 2);
    centerTextY = (yPos + (yPos + 30))/2 - (textHeight / 2);
  }

  void display() {
    if (isMouseOver()) { // if mouse is over button
      fill(130);         // use darker gray
    } else {             // otherwise
      fill(170);         // use lighter gray
    }

    rect(xPos, yPos, buttonWidth, buttonHeight); // show button

    fill(0);                                     // black text
    text(funcName, centerTextX, centerTextY);    // center text in button
  }

  // returns true if mouse is within button, returns false otherwise
  boolean isMouseOver() {
    if (mouseX > xPos &&              // mouse is to the right of the left side
      mouseX < xPos + buttonWidth &&  // mouse is to the left of the right side
      mouseY > yPos &&                // mouse is below the top side
      mouseY < yPos + buttonHeight) { // mouse is above the bottom side
      return true;
    } else {
      return false;
    }
  }
}
