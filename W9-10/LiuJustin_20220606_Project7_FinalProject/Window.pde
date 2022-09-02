class Window {
  float textWidth, textHeight, centerTextX, centerTextY; // for centering title in the window

  StringList allDates, allEntries; // stores information for all journal entries
  int currentEntryNum, numEntries; // keeps track of entries

  // for circular exit button
  float exitCenterX = 355; // x-coordinate for center of circule
  float exitCenterY = 165; // y-coordinate for center of circle
  float exitDiameter = 15; // diameter of circle

  // constructor, no parameters
  Window() {
    // initialize lists of strings
    allDates = new StringList();   // contains all of the dates of the entries
    allEntries = new StringList(); // contains all of the entries

    // initialize trackers
    currentEntryNum = 0;
    numEntries = 30;

    // get information from .txt files
    for (int i = 1; i <= numEntries; i++) {     // for each integer i from 1 to numEntries (inclusive)
      String[] lines = loadStrings(i + ".txt"); // read the file with name i.txt (i.e. 1.txt, 2.txt. etc.)
      allDates.append(lines[0]);                // store the first line as the date
      allEntries.append(lines[1]);              // store the second line as the entry
    }
  }

  void display() {
    noStroke(); // turn off stroke

    // window
    fill(0);                      // black
    rect(340, 150, 600, 500, 10); // (rounded corners)

    // top bar
    fill(255);                   // white
    rect(340, 150, 600, 30, 10); // top part (rounded corners)
    rect(340, 165, 600, 15);     // bottom part

    // button
    if (isOnExit()) {                                 // if over exit button
      fill(230, 0, 0);                                // use darker red
      circle(exitCenterX, exitCenterY, exitDiameter); // draw circle

      push(); // start temporary settings

      stroke(30); // black color for X

      // draw X - top left to bottom right
      line(exitCenterX - 5 * sqrt(2)/2, exitCenterY - 5 * sqrt(2)/2, // top left coordinates
        exitCenterX + 5 * sqrt(2)/2, exitCenterY + 5 * sqrt(2)/2);   // bottom right coordinates

      // draw X - bottom left to top right
      line(exitCenterX - 5 * sqrt(2)/2, exitCenterY + 5 * sqrt(2)/2, // bottom left coordinates
        exitCenterX + 5 * sqrt(2)/2, exitCenterY - 5 * sqrt(2)/2);   // top right coordinates

      pop(); // end temporary settings
    } else {                                          // if not over exit button
      fill(255, 0, 0);                                // use solid red color
      circle(exitCenterX, exitCenterY, exitDiameter); // draw circle
    }

    // text settings
    textSize(15);         // set text size
    textAlign(LEFT, TOP); // reference text by top left coordinate
    stroke(255);

    // get text size to figure out how to center the text
    textWidth = textWidth("Note");
    textHeight = textDescent() + textAscent();

    // centers the text in the button
    centerTextX = 640 - (textWidth / 2);
    centerTextY = 165 - (textHeight / 2);

    // display title
    fill(0);                                // black text
    text("Note", centerTextX, centerTextY); // centered title

    // display entries
    fill(255);    // white text
    textSize(20); // text size

    String currentDate = allDates.get(currentEntryNum);   // current date
    String currentText = allEntries.get(currentEntryNum); // current text for journal entry

    text(currentDate, 350, 190);           // display current date (first line)
    text(currentText, 350, 240, 580, 600); // display current entry text (second line)

    // instructions
    push(); // start temporary settings

    noFill();                // turn off fill
    stroke(255);             // white outline
    strokeWeight(3);         // thickness of outline
    rect(370, 580, 540, 45); // draw rectangle

    textAlign(CENTER, CENTER);                                                       // reference text by center coordinates
    text("Use the left and right arrow keys to move between the entries", 640, 600); // display instructions

    pop(); // end temporary settings
  }

  // checks if mouse is over exit button (red)
  boolean isOnExit() {
    float disX = exitCenterX - mouseX;               // horizontal distance from center of exit button
    float disY = exitCenterY - mouseY;               // vertical distance from center of exit button
    float disFromCenter = sqrt(sq(disX) + sq(disY)); // calculate direct distance from center of exit button

    return (disFromCenter < exitDiameter/2); // return true if in the button, otherwise return false
  }
}
