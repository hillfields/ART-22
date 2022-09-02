class App {
  float xPos, yPos; // top left corner of box
  String filepath;  // filepath to image
  PImage icon;      // image

  // constructor
  App(float xPos, float yPos, String filepath) {
    this.xPos = xPos;
    this.yPos = yPos;
    this.filepath = filepath;

    icon = loadImage(filepath); // load image
  }

  // displays the app
  void display() {
    // box settings
    strokeWeight(1); // set thickness of outline
    stroke(0);       // black outline

    // change background color
    if (isMouseOver()) { // if mouse is hovering over the button
      fill(200);         // use gray
    } else {             // otherwise
      fill(255);         // use white
    }

    // box and app icon
    rect(xPos, yPos, 80, 80);
    image(icon, xPos + 10, yPos + 10);
  }

  // returns true if mouse is within button, returns false otherwise
  boolean isMouseOver() {
    if (mouseX > xPos &&    // mouse is to the right of the left side
      mouseX < xPos + 80 && // mouse is to the left of the right side
      mouseY > yPos &&      // mouse is below the top side
      mouseY < yPos + 80) { // mouse is above the bottom side
      return true;
    } else {
      return false;
    }
  }
}
