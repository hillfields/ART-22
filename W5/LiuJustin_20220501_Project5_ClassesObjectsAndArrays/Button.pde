// creates a button with the text inside centered
// the syntax is similar to drawing a rectangle, but with the first added argument being the text
// see header for references
class Button {
  // instance variables
  String message;
  float xPos, yPos, bWidth, bHeight;
  color outlineColor, textColor, buttonColor;
  float textWidth, textHeight, centerTextX, centerTextY;

  // constructor
  Button(String message, float xPos, float yPos, float bWidth, float bHeight) {
    this.message = message;
    this.xPos = xPos;
    this.yPos = yPos;
    this.bWidth = bWidth;
    this.bHeight = bHeight;

    outlineColor = color(255); // white outline

    // text settings
    textSize(24);           // set text size
    textAlign(LEFT, TOP);   // reference text by top left coordinate
    textColor = color(255); // white color font

    // get text size to figure out how to center the text
    textWidth = textWidth(message);
    textHeight = textDescent() + textAscent();

    // coordinates to center the text
    centerTextX = (xPos + (xPos + bWidth))/2 - (textWidth / 2);
    centerTextY = (yPos + (yPos + bHeight))/2 - (textHeight / 2);
  }

  // shows the button on screen
  void display() {
    // add push() and pop() so that these settings only apply when this method is run
    push();

    // change color when hovering over button
    if (overButton()) {
      buttonColor = color(100); // if hovering, change button color to gray
    } else {
      buttonColor = color(0);   // else, keep button color black
    }

    // outlines the button - white rectangle with thin black outline
    stroke(0);
    fill(outlineColor);
    rect(xPos-5, yPos-5, bWidth+10, bHeight+10);

    // creates the button with the text centered
    noStroke();
    fill(buttonColor);
    rect(xPos, yPos, bWidth, bHeight);
    fill(textColor);
    text(message, centerTextX, centerTextY);

    pop();
  }

  // checks if mouse is within button bounds, returns true (yes) or false (no)
  boolean overButton() {
    if (mouseX >= xPos &&         // mouse is to the right of the left side
      mouseX <= xPos + bWidth &&  // mouse is to the left of the right side
      mouseY >= yPos &&           // mouse is below the top side
      mouseY <= yPos + bHeight) { // mouse is above the bottom side
      return true;
    } else {
      return false;
    }
  }
}
