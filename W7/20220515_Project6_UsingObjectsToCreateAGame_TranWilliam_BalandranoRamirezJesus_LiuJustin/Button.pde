class Button {
  // instance variables
  float x, y, rwidth, rheight;

  // constructor
  Button(float x, float y, float rwidth, float rheight) {
    this.x = x;
    this.y = y;
    this.rwidth = rwidth;
    this.rheight = rheight;
  }

  // displays the button
  void display() {
    if (mouseOver()) { // if hovering over button
      fill(230);       // make the button slightly grey
    } else {           // otherwise
      fill(255);       // make the button white
    }

    rect(x, y, rwidth, rheight); // draw the button
  }

  // detects if the mouse is in the button
  boolean mouseOver() {
    if (mouseX > x &&         // Is mouse past the left side of the rect?
      mouseX < x + rwidth &&  // Is mouse before the right side of rect?
      mouseY > y &&           // Is mouse past top of rect?
      mouseY < y + rheight) { // Is mouse before bottom of rect?
      return true;
    } else {
      return false;
    }
  }
}
