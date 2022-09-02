/*
 * Course: ART 22 - Computer Programming for the Arts
 * Assignment: Final Project
 *
 * by Justin Liu
 *
 * Initiated: 5/22/22
 * Last updated: 6/6/22
 *
 * SOURCES:
 * See project07_sources.pdf
 *
 * IMAGE CREDITS (images have been modified under Creative Commons):
 * 1. Battery (https://commons.wikimedia.org/wiki/File:Battery_2_PICOL_icon.svg)
 * 2. WiFi (https://commons.wikimedia.org/wiki/File:Feather-core-wifi.svg)
 * 3. Folder (https://commons.wikimedia.org/wiki/File:Antu_document-open.svg)
 * 4. Notes (https://commons.wikimedia.org/wiki/File:Icon_Notes.svg)
 *
 * PROJECT CONCEPT:
 * A hikikomori is broadly defined as a person who has shut themselves away from society for more than 6 months.
 * Click the folder/notes app to read the journal entries of a hikikomori.
 *
 * */

// contains all scenes
enum Scene {
  DESKTOP, WINDOW
}

Scene scene = Scene.DESKTOP; // start at DESKTOP scene

// declare objects
Folder folder;
App note;
MenuBar menubar;
Window window;

void setup() {
  size(1280, 800);      // 1280 by 800 pixels
  textAlign(LEFT, TOP); // reference text by top left coordinate
  noStroke();           // no outline

  // menu bar (top)
  menubar = new MenuBar();
  menubar.addButton("Exit");

  // folder
  folder = new Folder(1170, 50, "entries");

  // notes app (bottom)
  note = new App(30, height - 80, "note.png");

  // notes window
  window = new Window();
}

void draw() {
  switch(scene) {
  case DESKTOP: // desktop screen
    background(255); // white background

    push(); // start temporary settings

    // text settings for instructions
    fill(0);                   // black text
    textAlign(CENTER, CENTER); // center text
    textSize(25);              // text size

    // instructions, centered in the middle
    text("Welcome to the computer of a hikikomori, a person who has\n shut themselves away from society for at least 6 months.\n\nClick the notes app or the folder to read the journal entries of a hikikomori.", width/2, height/2);

    pop(); // end temporary settings

    noStroke(); // turn off stroke

    menubar.display(); // show menu bar
    folder.display();  // show folder

    // bottom bar
    fill(170);
    rect(0, height-80, width, 80);

    note.display(); // show notes app icon

    break;

  case WINDOW: // notes window
    push(); // start temporary settings

    // changes background (kind of like being consumed by darkness and climbing your way out)
    if (window.currentEntryNum < 15) {                      // for the first half of the entries
      background(255 - (window.currentEntryNum + 1) * 17);  // background goes from white to black
    } else {                                                // for the second half of the entries
      background(((window.currentEntryNum + 1) % 17) * 17); // background goes from black to white
    }

    noStroke();        // turn off stroke

    menubar.display(); // show menu bar
    window.display();  // display window

    pop();             // end temporary settings

    break;
  }
}

// if mouse is clicked
void mouseClicked() {
  switch(scene) {
  case DESKTOP: // desktop scene
    if (folder.isMouseOver() || note.isMouseOver()) { // if mouse is over folder or notes app
      scene = Scene.WINDOW;                           // switch to WINDOW scene
    }
    break;

  case WINDOW: // window scene
    if (window.isOnExit()) { // if mouse is over red exit button
      scene = Scene.DESKTOP; // switch to DESKTOP scene
    }
    break;
  }

  // both scenes
  if (menubar.menuButtons.get(0).isMouseOver()) { // if mouse is over exit button
    exit();                                       // quit application
  }
}

// if key is pressed
void keyPressed() {
  switch(scene) {
  case DESKTOP: // desktop scene
    break;      // nothing happens

  case WINDOW: // window scene
    if (keyCode == LEFT) {                              // if left arrow key is pressed
      if (window.currentEntryNum == 0) {                // if on the first entry (#1)
        window.currentEntryNum = window.numEntries - 1; // go to the last entry (#30)
      } else {                                          // otherwise
        window.currentEntryNum--;                       // go to the previous entry
      }
    } else if (keyCode == RIGHT) {                           // if right arrow key is pressed
      if (window.currentEntryNum == window.numEntries - 1) { // if on the last entry (#30)
        window.currentEntryNum = 0;                          // go to the first entry (#1)
      } else {                                               // otherwise
        window.currentEntryNum++;                            // go to the next entry
      }
    }
    break;
  }
}
