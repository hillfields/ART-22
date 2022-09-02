class JournalWindow {
  float exitCenterX = 15;
  float exitCenterY = 45;
  float exitDiameter = 15;
  
  float textWidth, textHeight;
  float centerTextX, centerTextY;

  JournalWindow() {
  }

  void display() {
    // window
    fill(0);
    rect(0, 30, width-140, height-110, 10); // (rounded corners)

    // bar
    fill(255);
    rect(0, 30, width-140, 30, 10); // top part (rounded corners)
    rect(0, 45, width-140, 15);     // bottom part

    // button
    if (isOnExit()) {
      fill(230, 0, 0);
      circle(exitCenterX, exitCenterY, exitDiameter);

      push();
      stroke(30);
      
      // draw X
      line(exitCenterX - 5 * sqrt(2)/2,
        exitCenterY - 5 * sqrt(2)/2,
        exitCenterX + 5 * sqrt(2)/2,
        exitCenterY + 5 * sqrt(2)/2);

      line(exitCenterX - 5 * sqrt(2)/2,
        exitCenterY + 5 * sqrt(2)/2,
        exitCenterX + 5 * sqrt(2)/2,
        exitCenterY - 5 * sqrt(2)/2);
      
      pop();
    } else {
      fill(255, 0, 0);
      circle(exitCenterX, exitCenterY, exitDiameter);
    }
    
    // text settings
    textSize(15);         // set text size
    textAlign(LEFT, TOP); // reference text by top left coordinate
    stroke(255);

    // get text size to figure out how to center the text
    textWidth = textWidth("File");
    textHeight = textDescent() + textAscent();
    
    // centers the text in the button
    centerTextX = ((width - 140) / 2) - (textWidth / 2);
    centerTextY = (90 / 2) - (textHeight / 2);
    
    // display text
    fill(0);
    text("File", centerTextX, centerTextY);
  }

  // https://processing.org/examples/button.html
  boolean isOnExit() {
    float disX = exitCenterX - mouseX;
    float disY = exitCenterY - mouseY;
    float disFromCenter = sqrt(sq(disX) + sq(disY));

    return (disFromCenter < exitDiameter/2);
  }
}
