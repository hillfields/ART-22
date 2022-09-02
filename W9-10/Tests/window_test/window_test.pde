/*
 * Course: ART 22 - Computer Programming for the Arts
 * Assignment: Final Project
 *
 * by Justin Liu
 *
 * Initiated: 5/22/22
 * Last updated: ???
 *
 * CITATIONS:
 * 1. Date [used in MenuBar class] (https://processing.org/reference/day_.html)
 * 2. Getting the Last Element in an ArrayList [used in MenuBar class] (https://www.delftstack.com/howto/java/java-arraylist-get-last-element/)
 *
 * NOTE:
 * Computer screen
 *
 * */

Folder folder, folder1, folder2, folder3, folder4;
App note, image, music, internet;
MenuBar menubar;
JournalWindow journalwindow;

void setup() {
  size(1280, 800);
  textAlign(LEFT, TOP);
  noStroke();

  // menu bar (top)
  menubar = new MenuBar();
  menubar.addButton("Power");
  menubar.addButton("Desktop");
  menubar.addButton("Help");

  // folders
  folder = new Folder(1280-110, 50, "20X1");
  folder1 = new Folder(1280-110, 175, "20X2");
  folder2 = new Folder(1280-110, 300, "20X3");
  folder3 = new Folder(1280-110, 425, "images");
  folder4 = new Folder(1280-110, 550, "music");

  // apps (bottom)
  note = new App(30, height - 80, "note.png");
  image = new App(110, height - 80, "image.png");
  music = new App(190, height - 80, "music.png");
  internet = new App(270, height - 80, "internet.png");
  
  journalwindow = new JournalWindow();
}

void draw() {
  background(120);
  // menu bar
  noStroke();
  menubar.display();

  // folders
  folder.display();
  folder1.display();
  folder2.display();
  folder3.display();
  folder4.display();

  // bottom bar
  fill(190);
  rect(0, height-80, width, 80);

  // apps
  note.display();
  image.display();
  music.display();
  internet.display();
  
  noStroke();
  journalwindow.display();
}
