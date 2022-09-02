JournalWindow journalwindow;
StringList allDates, allEntries;
int currentEntryNum, numEntries;

void setup() {
  size(1280, 800);
  textAlign(LEFT, TOP);
  noStroke();

  journalwindow = new JournalWindow();
  allDates = new StringList();
  allEntries = new StringList();
  
  currentEntryNum = 0;
  numEntries = 30;

  for (int i = 1; i <= numEntries; i++) {
    String[] lines = loadStrings(i + ".txt");
    allDates.append(lines[0]);
    allEntries.append(lines[1]);
  }
}

void draw() {
  background(120);

  noStroke();
  journalwindow.display();

  fill(255);
  textSize(25);

  String currentDate = allDates.get(currentEntryNum);
  String currentText = allEntries.get(currentEntryNum);

  text(currentDate, 10, 70);
  text(currentText, 10, 110, width-160, 600);
  
  rect(460, 600, 100, 100);
  rect(580, 600, 100, 100);
}

void mouseClicked() {
  if (mouseX < 570) {
    if (currentEntryNum == 0) {
      currentEntryNum = numEntries - 1;
    } else {
      currentEntryNum--;
    }
  } else {
    if (currentEntryNum == numEntries - 1) {
      currentEntryNum = 0;
    } else {
      currentEntryNum++;
    }
  }
}
