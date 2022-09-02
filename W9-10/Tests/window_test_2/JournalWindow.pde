class JournalWindow {
  float exitCenterX = 15;
  float exitCenterY = 45;
  float exitDiameter = 15;

  float textWidth, textHeight;
  float centerTextX, centerTextY;
  
  // no parameters needed
  JournalWindow() {
  }

  void display() {
    noStroke();
    
    // window
    fill(0);
    rect(0, 30, width-140, height-110, 10); // (rounded corners)

    // bar
    fill(255);
    rect(0, 30, width-140, 30, 10); // top part (rounded corners)
    rect(0, 45, width-140, 15);     // bottom part

    // button
    if (isOnExit()) { // if over exit button
      fill(230, 0, 0);                                // darker red
      circle(exitCenterX, exitCenterY, exitDiameter); // draw circle

      push();
      stroke(30); // black color

      // draw X - top left to bottom right
      line(exitCenterX - 5 * sqrt(2)/2,
        exitCenterY - 5 * sqrt(2)/2,
        exitCenterX + 5 * sqrt(2)/2,
        exitCenterY + 5 * sqrt(2)/2);

      // draw X - bottom left to upper right
      line(exitCenterX - 5 * sqrt(2)/2,
        exitCenterY + 5 * sqrt(2)/2,
        exitCenterX + 5 * sqrt(2)/2,
        exitCenterY - 5 * sqrt(2)/2);

      pop();
    } else {
      fill(255, 0, 0);                                // red color
      circle(exitCenterX, exitCenterY, exitDiameter); // draw circle
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

  // checks if mouse is over exit button (red)
  boolean isOnExit() {
    float disX = exitCenterX - mouseX;               // horizontal distance from center of exit button
    float disY = exitCenterY - mouseY;               // vertical distance from center of exit button
    float disFromCenter = sqrt(sq(disX) + sq(disY)); // calculate direct distance from center of exit button

    return (disFromCenter < exitDiameter/2); // return true if in the button, otherwise return false
  }
}
