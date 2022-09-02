class App {
  float xPos, yPos;
  String filepath;
  PImage icon;

  App(float xPos, float yPos, String filepath) {
    this.xPos = xPos;
    this.yPos = yPos;
    this.filepath = filepath;

    icon = loadImage(filepath);
  }
  
  // displays the app
  void display() {
    // box settings
    strokeWeight(1);
    stroke(0);
    
    if (isMouseOver()) {
      fill(200);
    } else {
      fill(255);
    }

    // box and app icon
    rect(xPos, yPos, 80, 80);
    image(icon, xPos + 10, yPos + 10);
  }
  
  // returns true if mouse is within button, returns false otherwise
  boolean isMouseOver() {
    if (mouseX > xPos &&
      mouseX < xPos + 80 &&
      mouseY > yPos &&
      mouseY < yPos + 80) {
      return true;
    } else {
      return false;
    }
  }

  // add hover
}
