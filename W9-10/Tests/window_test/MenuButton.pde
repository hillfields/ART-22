class MenuButton {
  float xPos, yPos;
  String funcName;

  float textWidth, textHeight, marginWidth;
  float centerTextX, centerTextY;
  float buttonWidth, buttonHeight;

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

    marginWidth = 10;

    // button width and height
    buttonWidth = textWidth + 2*marginWidth;
    buttonHeight = 30;
    
    // centers the text in the button
    centerTextX = (xPos + (xPos + buttonWidth))/2 - (textWidth / 2);
    centerTextY = (yPos + (yPos + 30))/2 - (textHeight / 2);
  }

  void display() {
    if (isMouseOver()) {
      fill(130);
    } else {
      fill(170);
    }
    
    rect(xPos, yPos, buttonWidth, buttonHeight);

    fill(0);
    text(funcName, centerTextX, centerTextY);
  }
  
  // returns true if mouse is within button, returns false otherwise
  boolean isMouseOver() {
    if (mouseX > xPos &&
      mouseX < xPos + buttonWidth &&
      mouseY > yPos &&
      mouseY < yPos + buttonHeight) {
      return true;
    } else {
      return false;
    }
  }
}
