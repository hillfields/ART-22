/*
 * Course: ART 22 - Computer Programming for the Arts
 * Assignment: Expanded Cinema Part 2
 *
 * by Justin Liu
 *
 * Initiated: 4/29/22
 * Last updated: 5/1/22
 *
 * PROCESSING REFERENCES:
 * 1. Button (https://processing.org/examples/button.html)
 * 2. Getting Text Sizes for Button class (https://forum.processing.org/two/discussion/13105/how-to-make-a-string-of-any-length-fit-within-text-box.html)
 * 3. textAlign() (https://processing.org/reference/textAlign_.html)
 * 4. substring() in scrollText() function (https://processing.org/reference/String_substring_.html)
 *
 * STORY:
 * The title of this story is "Days".
 * The character has lost their partner.
 * The user determines the choices the character makes to get through the day.
 *
 * WARNING:
 * There is a part of the story that references suicide. Viewer discretion is advised.
 *
 * FEATURES:
 * Buttons (Classes are pretty cool)
 * Scrolling text (Kind of like a visual novel)
 * Drawings, all by me (Drawing is not my strong suit, so apologies in advance)
 *
 * HOW TO PLAY THE STORY:
 * Press the play button on the upper left part of this window.
 * In the new pop-up window, press the start button on the title screen to begin the story.
 * Read through the text and click anywhere on the screen to move to the next scene.
 * When buttons appear, you have to make a choice - choose one of them to advance the story.
 * The story loops back to the title screen, so you can play it again and choose a different ending.
 *
 * */

// images
PImage title1, title2, curtains, cafe, bedroom, coffee, walking1, walking2, box, memories, piano, ramen, knife, scribble;

// buttons
Button buttonTitle, buttonOutside, buttonInside, buttonGreet, buttonIgnore, buttonCloset, buttonPiano, buttonSenses, buttonDeath;

// text
String currentText;
int index;

// opening and closing eyes effect in AWAKE2 and BED scenes, respectively
int openEyes = 0;
int closeEyes = 255;

// contains all of the scenes
enum Scene {
  TITLE1, TITLE2, AWAKE1, AWAKE2, AWAKE3, // TITLE and AWAKE scenes
    OUTSIDE1, OUTSIDE2, INSIDE1, INSIDE2, // AWAKE choices & routes
    GREET1, GREET2, GREET3, GREET4, GREET5, IGNORE, // OUTSIDE choices & routes
    CLOSET1, CLOSET2, PIANO1, PIANO2, PIANO3, PIANO4, // INSIDE choices & routes
    SAD, SENSES, DINNER, // choices & routes before endings
    BED, DEATH1, DEATH2 // SAD choices & routes (BED = "good" ending, DEATH = "bad" ending)
}

// start with title scene
Scene scene = Scene.TITLE1;

void setup() {
  size(600, 600); // 600 by 600 pixels
  frameRate(35);  // 35 frames per second, makes scrolling text more natural

  // initialize buttons
  buttonTitle = new Button("Start", 250, 400, 100, 50);
  buttonOutside = new Button("Go outside", 100, 200, 150, 50);
  buttonInside = new Button("Stay inside", 350, 200, 150, 50);
  buttonGreet = new Button("Greet", 100, 200, 150, 50);
  buttonIgnore = new Button("Ignore", 350, 200, 150, 50);
  buttonCloset = new Button("Look in the closet", 75, 200, 200, 50);
  buttonPiano = new Button("Play their piano", 325, 200, 200, 50);
  buttonSenses = new Button("Return to your senses", 50, 200, 230, 50);
  buttonDeath = new Button("Grab the knife", 320, 200, 230, 50);

  // load images
  title1 = loadImage("data/title1.png");
  title2 = loadImage("data/title2.png");
  curtains = loadImage("data/curtains.png");
  cafe = loadImage("data/cafe.png");
  bedroom = loadImage("data/bedroom.png");
  coffee = loadImage("data/coffee.png");
  walking1 = loadImage("data/walking1.png");
  walking2 = loadImage("data/walking2.png");
  box = loadImage("data/box.png");
  memories = loadImage("data/memories.png");
  piano = loadImage("data/piano.png");
  ramen = loadImage("data/ramen.png");
  knife = loadImage("data/knife.png");
  scribble = loadImage("data/scribble.png");
}

void draw() {
  switch(scene) {
  case TITLE1: // default title screen
    image(title1, 0, 0); // background image

    // title
    push();
    textSize(50);
    textAlign(CENTER, CENTER);
    fill(0);
    text("DAYS", 0, 10, width, 300);
    pop();

    buttonTitle.display(); // start button

    break;

  case TITLE2: // alternative title screen - shown after death
    image(title2, 0, 0); // background image (inverted title1 image)

    // title
    push();
    textSize(50);
    textAlign(CENTER, CENTER);
    fill(255);
    text("DAYS", 0, 10, width, 300);
    pop();

    buttonTitle.display(); // start button

    break;

  case AWAKE1: // wake up
    background(0); // black screen (just waking up)
    drawTextBox(); // text box

    // text with scrolling effect
    currentText = "You regain consciousness in the afternoon, feeling groggy. Another day.";
    scrollText(currentText, index);
    index++;

    break;

  case AWAKE2:
    if (openEyes <= 255) {   // opening eyes effect, gradually goes from black to white screen
      background(openEyes);
      openEyes += 5;
      drawTextBox();
    } else {
      image(curtains, 0, 0); // curtains image
      drawTextBox();         // text box

      // text with scrolling effect
      currentText = "You open your eyes gradually. A few seconds pass by, and you remember that your partner is no longer in this world.";
      scrollText(currentText, index);
      index++;
    }

    break;

  case AWAKE3:
    image(curtains, 0, 0); // curtains image
    drawTextBox();         // text box

    // text with scrolling effect
    currentText = "You begin to feel hollow inside, but you can't stay in bed all day.";
    scrollText(currentText, index);
    index++;

    // once text finishes, display the choices/buttons
    if (index > currentText.length()) {
      buttonOutside.display();
      buttonInside.display();
    }

    break;

  case OUTSIDE1: // go outside
    image(cafe, 0, 0); // coffee shop image
    drawTextBox();     // text box

    // text with scrolling effect
    currentText = "You go outside to get some fresh air. You head to the coffee shop nearby.";
    scrollText(currentText, index);
    index++;

    break;

  case OUTSIDE2:
    image(cafe, 0, 0); // coffee shop image
    drawTextBox();     // text box

    // text with scrolling effect
    currentText = "After you get your order, you recognize a friend of yours sitting alone at a table.";
    scrollText(currentText, index);
    index++;

    // once text finishes, display the choices/buttons
    if (index > currentText.length()) {
      buttonGreet.display();
      buttonIgnore.display();
    }

    break;

  case INSIDE1: // stay inside
    image(bedroom, 0, 0); // bedroom image
    drawTextBox();        // text box

    // text with scrolling effect
    currentText = "You don't have the energy to leave the house. You walk through every room to find something to do, but you wind up back in your bedroom.";
    scrollText(currentText, index);
    index++;

    break;

  case INSIDE2:
    image(bedroom, 0, 0); // bedroom image
    drawTextBox();        // text box

    // text with scrolling effect
    currentText = "You realize that your partner's possessions are still in your bedroom. You feel like reminiscing.";
    scrollText(currentText, index);
    index++;

    // once text finishes, display the choices/buttons
    if (index > currentText.length()) {
      buttonCloset.display();
      buttonPiano.display();
    }

    break;

  case GREET1: // greet friend
    image(coffee, 0, 0); // coffee image
    drawTextBox();       // text box

    // text with scrolling effect
    currentText = "You go to greet your friend, who is pleasantly surprised to see you. You catch each other up on how your lives are going, but before long memories of your partner resurface.";
    scrollText(currentText, index);
    index++;

    break;

  case GREET2:
    image(coffee, 0, 0); // coffee image
    drawTextBox();       // text box

    // text with scrolling effect
    currentText = "Tears start falling from your eyes. Your friend asks you what's wrong.";
    scrollText(currentText, index);
    index++;

    break;

  case GREET3:
    image(coffee, 0, 0); // coffee image
    drawTextBox();       // text box

    // text with scrolling effect
    currentText = "Everything you can conjure up about your partner spills out from your mouth. Your friend listens without interrupting.";
    scrollText(currentText, index);
    index++;

    break;

  case GREET4:
    image(coffee, 0, 0); // coffee image
    drawTextBox();       // text box

    // text with scrolling effect
    currentText = "After you finish talking, you apologize for taking so much of their time. Your friend shakes their head and reassures you that it was a good thing to release your pent-up grief.";
    scrollText(currentText, index);
    index++;

    break;

  case GREET5:
    image(walking1, 0, 0); // walking home image
    drawTextBox();         // text box

    // text with scrolling effect
    currentText = "You leave the coffee shop, feeling much better. As you walk home, the air feels less oppressive than it was when you woke up. Your stomach growls when you reach your front door.";
    scrollText(currentText, index);
    index++;

    break;

  case IGNORE: // ignore friend
    image(walking2, 0, 0); // waling home image
    drawTextBox();         // text box

    // text with scrolling effect
    currentText = "You head home without greeting your friend. You feel that no one would be able to understand what you're going through.";
    scrollText(currentText, index);
    index++;

    break;

  case CLOSET1: // look in the closet
    image(box, 0, 0); // box of memories image
    drawTextBox();    // text box

    // text with scrolling effect
    currentText = "You look inside of the closet. As you look through your partner's clothes that haven't been worn in a while, you notice a box labeled 'MEMORIES' gathering dust in the corner.";
    scrollText(currentText, index);
    index++;

    break;

  case CLOSET2:
    image(memories, 0, 0); // items with memories images
    drawTextBox();         // text box

    // text with scrolling effect
    currentText = "You open up the box. Photos, plushies, receipts - items reminding you of your time together. Each one only makes you miss your partner even more.";
    scrollText(currentText, index);
    index++;

    break;

  case PIANO1: // play the piano
    image(piano, 0, 0); // piano image
    drawTextBox();      // text box

    // text with scrolling effect
    currentText = "You sit down in front of the piano keyboard your partner left behind. Sheets of music sit on the music stand just next to the piano.";
    scrollText(currentText, index);
    index++;

    break;

  case PIANO2:
    image(piano, 0, 0); // piano image
    drawTextBox();      // text box

    // text with scrolling effect
    currentText = "You look through the sheet music. With your limited music knowledge, you can only play a few notes. But you keep going, as if your partner's spirit is encouraging you.";
    scrollText(currentText, index);
    index++;

    break;

  case PIANO3:
    image(piano, 0, 0); // piano image
    drawTextBox();      // text box

    // text with scrolling effect
    currentText = "You spend several hours plinking away on the piano. It helps calm you down.";
    scrollText(currentText, index);
    index++;

    break;

  case PIANO4:
    image(piano, 0, 0); // piano image
    drawTextBox();      // text box

    // text with scrolling effect
    currentText = "Your stomach growls, so you decide to get up. As you head to the kitchen, you wonder if you can ever reach your partner's level if you keep practicing.";
    scrollText(currentText, index);
    index++;

    break;

  case SAD: // see knife while sad
    image(knife, 0, 0); // knife image
    drawTextBox();      // text box

    // text with scrolling effect
    currentText = "You begin to feel even sadder. You think about preparing something to eat to get rid of that feeling. You go to your kitchen, but the knife catches your eye.";
    scrollText(currentText, index);
    index++;

    // once text finishes, display the choices/buttons
    if (index > currentText.length()) {
      buttonSenses.display();
      buttonDeath.display();
    }

    break;

  case SENSES: // return to senses
    background(255); // white background (calming down)
    drawTextBox();   // text box

    // text with scrolling effect
    currentText = "You take some deep breaths to regain your composure. You don't want to take any rash actions.";
    scrollText(currentText, index);
    index++;

    break;

  case DINNER: // make dinner
    image(ramen, 0, 0); // cup ramen image
    drawTextBox();      // text box

    // text with scrolling effect
    currentText = "You whip up a quick meal to eat. You feel a bit tired afterwards.";
    scrollText(currentText, index);
    index++;

    break;

  case BED: // go to sleep
    if (closeEyes >= 0) { // closing eyes effect, gradually goes from white to black screen
      background(closeEyes);
      closeEyes -= 5;
      drawTextBox();
    } else {
      background(0); // black background (going to sleep)
      drawTextBox(); // text box

      // text with scrolling effect
      currentText = "You've managed to get through another day. Time for bed.";
      scrollText(currentText, index);
      index++;
    }
    break;

  case DEATH1: // stab self
    image(scribble, 0, 0); // scribble image
    drawTextBox();         // text box

    // text with scrolling effect
    currentText = "You grab the knife and stare at it. A world without your partner is unbearable.";
    scrollText(currentText, index);
    index++;

    break;

  case DEATH2:
    image(scribble, 0, 0); // scribble image
    drawTextBox();         // text box

    // text with scrolling effect
    currentText = "You point the knife at yourself. As you thrust the knife towards your stomach, your final thought is reuniting with your partner.";
    scrollText(currentText, index);
    index++;

    break;
  }
}

// mouse clicks changes scenes
void mouseClicked() {
  switch(scene) {
  case TITLE1:
    if (buttonTitle.overButton()) { // if START button is pressed
      scene = Scene.AWAKE1;         // go to AWAKE1 scene
    }
    break;
  case TITLE2:
    if (buttonTitle.overButton()) { // if START button is pressed
      scene = Scene.AWAKE1;         // go to AWAKE1 scene
    }
    break;
  case AWAKE1:
    scene = Scene.AWAKE2; // go to AWAKE2 scene
    index = 0;            // reset index for scrollText
    break;
  case AWAKE2:
    scene = Scene.AWAKE3; // go to AWAKE3 scene
    index = 0;            // reset index for scrollText
    openEyes = 0;         // reset color number for opening eyes
    break;
  case AWAKE3:
    if (buttonOutside.overButton()) { // if OUTSIDE button is pressed
      scene = Scene.OUTSIDE1;         // go to OUTSIDE1 scene
      index = 0;                      // reset index for scrollText
    } else if (buttonInside.overButton()) { // if INSIDE button is pressed
      scene = Scene.INSIDE1;                // go to INSIDE1 scene
      index = 0;                            // reset index for scrollText
    }
    break;

  case OUTSIDE1:
    scene = Scene.OUTSIDE2; // go to OUTSIDE2 scene
    index = 0;              // reset index for scrollText
    break;
  case OUTSIDE2:
    if (buttonGreet.overButton()) { // if GREET button is pressed
      scene = Scene.GREET1;         // go to GREET1 scene
      index = 0;                    // reset index for scrollText
    } else if (buttonIgnore.overButton()) { // if IGNORE button is pressed
      scene = Scene.IGNORE;                 // go to IGNORE scene
      index = 0;                            // reset index for scrollText
    }
    break;
  case INSIDE1:
    scene = Scene.INSIDE2; // go to INSIDE2 scene
    index = 0;             // reset index for scrollText
    break;
  case INSIDE2:
    if (buttonCloset.overButton()) { // if CLOSET button is pressed
      scene = Scene.CLOSET1;         // go to CLOSET1 scene
      index = 0;                     // reset index for scrollText
    } else if (buttonPiano.overButton()) { // if PIANO button is pressed
      scene = Scene.PIANO1;                // go to PIANO1 scene
      index = 0;                           // reset index for scrollText
    }
    break;

  case GREET1:
    scene = Scene.GREET2; // go to GREET2 scene
    index = 0;            // reset index for scrollText
    break;
  case GREET2:
    scene = Scene.GREET3; // go to GREET3 scene
    index = 0;            // reset index for scrollText
    break;
  case GREET3:
    scene = Scene.GREET4; // go to GREET4 scene
    index = 0;            // reset index for scrollText
    break;
  case GREET4:
    scene = Scene.GREET5; // go to GREET5 scene
    index = 0;            // reset index for scrollText
    break;
  case GREET5:
    scene = Scene.DINNER; // go to DINNER scene
    index = 0;            // reset index for scrollText
    break;
  case IGNORE:
    scene = Scene.SAD;    // go to SAD scene
    index = 0;            // reset index for scrollText
    break;

  case CLOSET1:
    scene = Scene.CLOSET2; // go to CLOSET2 scene
    index = 0;             // reset index for scrollText
    break;
  case CLOSET2:
    scene = Scene.SAD;     // go to SAD scene
    index = 0;             // reset index for scrollText
    break;
  case PIANO1:
    scene = Scene.PIANO2;  // go to PIANO2 scene
    index = 0;             // reset index for scrollText
    break;
  case PIANO2:
    scene = Scene.PIANO3;  // go to PIANO3 scene
    index = 0;             // reset index for scrollText
    break;
  case PIANO3:
    scene = Scene.PIANO4;  // go to PIANO4 scene
    index = 0;             // reset index for scrollText
    break;
  case PIANO4:
    scene = Scene.DINNER;  // go to DINNER scene
    index = 0;             // reset index for scrollText
    break;

  case SAD:
    if (buttonSenses.overButton()) { // if SENSES button is pressed
      scene = Scene.SENSES;          // go to SENSES scene
      index = 0;                     // reset index for scrollText
    } else if (buttonDeath.overButton()) { // if DEATH button is pressed
      scene = Scene.DEATH1;                // go to DEATH1 scene
      index = 0;                           // reset index for scrollText
    }
    break;
  case SENSES:
    scene = Scene.DINNER; // go to DINNER scene
    index = 0;            // reset index for scrollText
    break;
  case DINNER:
    scene = Scene.BED;    // go to BED scene
    index = 0;            // reset index for scrollText
    break;

  case BED:
    scene = Scene.TITLE1; // go to TITLE1 scene
    index = 0;            // reset index for scrollText
    closeEyes = 255;      // reset color number for closing eyes
    break;
  case DEATH1:
    scene = Scene.DEATH2; // go to DEATH2 scene
    index = 0;            // reset index for scrollText
    break;
  case DEATH2:
    scene = Scene.TITLE2; // go to TITLE2 scene
    index = 0;            // reset index for scrollText
    break;
  }
}
