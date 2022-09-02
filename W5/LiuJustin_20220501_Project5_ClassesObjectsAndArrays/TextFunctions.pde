// draws the text box
void drawTextBox() {
  fill(255);
  rect(45, 385, 510, 170); // white outer rectngle (outline)
  fill(0);
  rect(50, 390, 500, 160); // black inner rectangle
}

// used for cool scrolling effect
void scrollText(String message, int index) {
  fill(255); // white text

  // if the index is less than the length of the string, show the substring
  if (index <= message.length()) {
    text(message.substring(0, index), 60, 395, 485, 550);
  }
  // else, show the whole string
  else {
    text(message, 60, 395, 485, 550);
  }
}
