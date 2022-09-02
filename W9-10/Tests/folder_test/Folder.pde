class Folder {
  float xPos, yPos;
  String name;
  PImage folder;

  float textX, textY;
  float textWidth, textHeight, centerTextX, centerTextY;

  Folder(float xPos, float yPos, String name) {
    this.xPos = xPos;
    this.yPos = yPos;
    this.name = name;

    folder = loadImage("folder.png");

    // text settings
    textSize(15);         // set text size
    textAlign(LEFT, TOP); // reference text by top left coordinate

    // get text size to figure out how to center the text
    textWidth = textWidth(name);
    textHeight = textDescent() + textAscent();

    // coordinates to center the text
    textX = xPos - 10;
    textY = yPos + 70;
    centerTextX = (textX + (textX + 100))/2 - (textWidth / 2);
    centerTextY = (textY + (textY + 30))/2 - (textHeight / 2);
  }

  void display() {
    if (isMouseOver()) {
      noStroke();
      fill(200);
      rect(xPos - 10, yPos, 100, 100);
    }

    image(folder, xPos, yPos);

    fill(0);
    text(name, centerTextX, centerTextY);
  }

  boolean isMouseOver() {
    if ((mouseX >= xPos - 10) &&
      (mouseX <= (xPos - 10) + 100) &&
      (mouseY >= yPos) &&
      (mouseY <= yPos + 100)) {
      return true;
    } else {
      return false;
    }
  }
}
