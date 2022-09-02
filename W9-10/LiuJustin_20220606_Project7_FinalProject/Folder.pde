class Folder {
  float xPos, yPos; // position of folder
  String name;      // name of folder
  PImage folder;    // image of folder

  float textX, textY, textWidth, textHeight, centerTextX, centerTextY; // used for centering text under folder

  // constructor
  Folder(float xPos, float yPos, String name) {
    this.xPos = xPos;
    this.yPos = yPos;
    this.name = name;

    folder = loadImage("folder.png"); // load folder image

    // text settings
    textSize(15);         // set text size
    textAlign(LEFT, TOP); // reference text by top left coordinate

    // get text size to figure out how to center the text
    textWidth = textWidth(name);
    textHeight = textDescent() + textAscent();

    // coordinates to center the text
    textX = xPos - 10;
    textY = yPos + 75;
    centerTextX = (textX + (textX + 100))/2 - (textWidth / 2);
    centerTextY = (textY + (textY + 30))/2 - (textHeight / 2);
  }

  // displays the folder image and name
  void display() {
    if (isMouseOver()) {
      noStroke();
      fill(200);
      rect(xPos - 10, yPos, 100, 105);
    }

    // folder image
    image(folder, xPos, yPos);

    // folder name (black font)
    fill(0);
    text(name, centerTextX, centerTextY);
  }

  // returns true if mouse is within button, returns false otherwise
  boolean isMouseOver() {
    if ((mouseX >= xPos - 10) &&       // mouse is to the right of the left side
      (mouseX <= (xPos - 10) + 100) && // mouse is to the left of the right side
      (mouseY >= yPos) &&              // mouse is below the top side
      (mouseY <= yPos + 105)) {        // mouse is above the bottom side
      return true;
    } else {
      return false;
    }
  }
}
