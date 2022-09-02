/*
 * Course: ART 22 - Computer Programming for the Arts
 * Assignment: Game
 *
 * by William Tran, Jesus Balandrano Ramirez, and Justin Liu
 *
 * Initiated: 5/9/22
 * Last updated: 5/15/22
 *
 * CITATIONS:
 * 1. Pressing multiple keys at the same time (https://stackoverflow.com/questions/66649377/is-there-a-way-to-detect-multiple-key-inputs-at-once-in-processing)
 *
 * CONCEPT:
 * We wanted to create a game where the player tries to keep the ball within 4 paddles, one on each side.
 * The result is "Ghostkeeper", where the player tries to prevent the ghost from escaping.
 *
 * INSTRUCTIONS:
 * Objective
 *   Keep the ghost within the paddles.
 *   Don't let the ghost touch the window edge and escape!
 * Use the arrow keys to control the paddles!
 *   The ← and → arrow keys control the top and bottom paddles.
 *   The ↑ and ↓ control the left and right paddles.
 * Levels
 *   Easy: The baseline level. Good for practicing the mechanics of the game.
 *   Medium: The paddles are shorter and the ghost moves faster.
 *   Hard: The paddles are even shorter and the ghost moves even faster. Also, the ghost disappears every now and then.
 *
 * WORK CONTRIBUTION:
 * William worked on the ball class and the ghost image.
 * Jesus worked on the scenes and the button class.
 * Justin worked on the paddles and the timer class.
 *
 * */

// declare buttons
Button tutorial, back, level1, level2, level3, levels;

// declare paddles
Paddle leftPaddle, rightPaddle, topPaddle, bottomPaddle;

// declare ball
Ghost ghost;

// declare timer
Timer timer;

// declare title screen
PImage title;

// scenes
enum Scene {
  TITLE, LEVELS, TUTORIAL, LEVEL1, LEVEL2, LEVEL3, LOSE, WIN
}

// start at title scene
Scene scene = Scene.TITLE;

void setup () {
  size (700, 700);           // set window size
  textAlign(CENTER, CENTER); // reference text by center
  noStroke();                // turn off stroke

  // initialize buttons
  tutorial = new Button(45, 358, 609, 100);
  back = new Button(240, 600, 220, 60);
  level1 = new Button(45, 500, 175, 100);
  level2 = new Button(262, 500, 175, 100);
  level3 = new Button(479, 500, 175, 100);
  levels = new Button(200, 450, 300, 100);

  // initialize left and right paddles that move up/down, centered on the y-axis
  leftPaddle = new Paddle(20, height/2 - 250/2, 250, 20, "vertical");
  rightPaddle = new Paddle(width - 40, height/2 - 250/2, 250, 20, "vertical");

  // initialize top and bottom paddles that move left/right, centered on the x-axis
  topPaddle = new Paddle(width/2 - 250/2, 20, 250, 20, "horizontal");
  bottomPaddle = new Paddle(width/2 - 250/2, height - 40, 250, 20, "horizontal");

  // initialize ball, centered in the middle of the window
  ghost = new Ghost(width/2, height/2, 40, 4, 3);

  // initialize timer, starting at 45 seconds
  timer = new Timer(0, 45);

  // load and resize title screen image
  imageMode(CENTER);

  title = loadImage("title.png");

  title.resize(width, 0);
}

void draw() {
  switch (scene) {
  case TITLE: // title scene
    background(0); // black background

    image(title, width/2, height/2); // load image

    break;

  case LEVELS: // levels scene
    background(#17161C); // gray background
    fill(255);     // white fill

    // LEVELS text (white)
    textSize(60);
    text("LEVELS", 0, 0, width, 520);

    // TUTORIAL button (black text)
    tutorial.display();
    textSize(40);
    fill(0);
    text("HOW TO PLAY", 350, 403);

    // EASY level button (green text)
    level1.display();
    fill(82, 217, 108);
    text("EASY", -220, 190, width, height);

    // MEDIUM level button (yellow text)
    level2.display();
    fill(234, 216, 51);
    text("MEDIUM", 0, 190, width, height);

    // HARD level button (red text)
    level3.display();
    fill(252, 102, 96);
    text("HARD", 220, 190, width, height);

    break;

  case TUTORIAL: // tutorial scene
    background(#300E29); // gray background
    fill(255);           // white fill for text

    // title
    textSize(50);
    text("HOW TO PLAY", 350, 50);

    // explains objective
    textSize(30);
    text("OBJECTIVE:", 350, 120);
    text("Keep the ghost within the paddles.", 350, 160);
    text("Don't let it touch the window edge and escape!", 350, 200);

    // explains controls
    text("CONTROLS:", 350, 260);
    text("Use the arrow keys to control the paddles!", 350, 300);
    text("The ← and → keys move the top and bottom paddles.", 350, 340);
    text("The ↑ and ↓ keys move the left and right paddles.", 350, 380);

    // explains levels
    text("LEVELS:", 350, 440);
    text("Easy - Recommended for beginners.", 350, 480);
    text("Medium - Shorter paddles, faster ghost.", 350, 520);
    text("Hard - The ghost disappears every now and then.", 350, 560);

    // button to return to levels
    back.display();
    fill(0);
    text("Return to levels", 350, 625);

    break;

  case LEVEL1: // easy level
    background(#395C21); // green background
    fill(255);           // white fill

    // display and update the left paddle's position
    leftPaddle.display();
    leftPaddle.update();

    // display and update the right paddle's position
    rightPaddle.display();
    rightPaddle.update();

    // display and update the top paddle's position
    topPaddle.display();
    topPaddle.update();

    // display and update the bottom paddle's position
    bottomPaddle.display();
    bottomPaddle.update();

    // display and update the ghost's position
    ghost.display();
    ghost.update();

    if (hitHorizontal(topPaddle, ghost) ||  // if the ghost touches the top paddle
      hitHorizontal(bottomPaddle, ghost)) { // or the bottom paddle
      ghost.yDirection = -ghost.yDirection; // change its vertical direction
    }

    if (hitVertical(leftPaddle, ghost) ||   // if the ghost touches the left paddle
      hitVertical(rightPaddle, ghost)) {    // or the right paddle
      ghost.xDirection = -ghost.xDirection; // change its horizontal direction
    }

    if (ghost.isTouchingWindowEdge()) { // if the ghost touches any window edge
      scene = Scene.LOSE;               // go to the lose screen
    }

    if (frameCount % 60 == 0 & timer.timeLeft > 0) { // every second
      timer.timeLeft -= 1;                           // decrease the timer by 1
    } else if (timer.timeLeft == 0) {                // if timer reaches 0
      scene = Scene.WIN;                             // go to the win screen
    }

    timer.display(); // display time left

    break;

  case LEVEL2: // medium level
    background(#2B3A9E); // blue background
    fill(255);           // white fill

    // display and update the left paddle's position
    leftPaddle.display();
    leftPaddle.update();

    // display and update the right paddle's position
    rightPaddle.display();
    rightPaddle.update();

    // display and update the top paddle's position
    topPaddle.display();
    topPaddle.update();

    // display and update the bottom paddle's position
    bottomPaddle.display();
    bottomPaddle.update();

    // display and update the ghost's position
    ghost.display();
    ghost.update();

    if (hitHorizontal(topPaddle, ghost) ||  // if the ghost touches the top paddle
      hitHorizontal(bottomPaddle, ghost)) { // or the bottom paddle
      ghost.yDirection = -ghost.yDirection; // change its vertical direction
    }

    if (hitVertical(leftPaddle, ghost) ||   // if the ghost touches the left paddle
      hitVertical(rightPaddle, ghost)) {    // or the right paddle
      ghost.xDirection = -ghost.xDirection; // change its horizontal direction
    }

    if (ghost.isTouchingWindowEdge()) { // if the ghost touches any window edge
      scene = Scene.LOSE;               // go to the lose screen
    }

    if (frameCount % 60 == 0 & timer.timeLeft > 0) { // every second
      timer.timeLeft -= 1;                           // decrease the timer by 1
    } else if (timer.timeLeft == 0) {                // if timer reaches 0
      scene = Scene.WIN;                             // go to the win screen
    }

    timer.display(); // display time left

    break;

  case LEVEL3: // hard level
    background(#0E1752); // dark blue background
    fill(255);           // white fill

    // display and update the left paddle's position
    leftPaddle.display();
    leftPaddle.update();

    // display and update the right paddle's position
    rightPaddle.display();
    rightPaddle.update();

    // display and update the top paddle's position
    topPaddle.display();
    topPaddle.update();

    // display and update the bottom paddle's position
    bottomPaddle.display();
    bottomPaddle.update();

    // display and update the ghost's position
    ghost.passedTime = (millis() - ghost.savedTime) % 15000; // every 15 seconds
    if (ghost.passedTime < 10000) {                          // show the ghost for 10 seconds and hide for 3 seconds
      ghost.display();
    }
    ghost.update();

    if (hitHorizontal(topPaddle, ghost) ||  // if the ghost touches the top paddle
      hitHorizontal(bottomPaddle, ghost)) { // or the bottom paddle
      ghost.yDirection = -ghost.yDirection; // change its vertical direction
    }

    if (hitVertical(leftPaddle, ghost) ||   // if the ghost touches the left paddle
      hitVertical(rightPaddle, ghost)) {    // or the right paddle
      ghost.xDirection = -ghost.xDirection; // change its horizontal direction
    }

    if (ghost.isTouchingWindowEdge()) { // if the ghost touches any window edge
      scene = Scene.LOSE;               // go to the lose screen
    }

    if (frameCount % 60 == 0 & timer.timeLeft > 0) { // every second
      timer.timeLeft -= 1;                           // decrease the timer by 1
    } else if (timer.timeLeft == 0) {                // if timer reaches 0
      scene = Scene.WIN;                             // go to the win screen
    }

    timer.display(); // display time left

    break;

  case LOSE: // lose scene (when ghost touches window edge)
    background(0); // black background
    textSize(40);  // set text size

    // lose message
    fill(255);
    text("The ghost escaped. You lose!", 0, 0, width, height);

    // button to return to levels scene
    levels.display();
    fill(0);
    text("Go to Levels", 350, 490);

    break;

  case WIN: // win scene (when timer reaches 0)
    background(0); // black background
    textSize(40);  // set text size

    // win message
    fill(255);
    text("Yay! You didn't let the ghost escape!", 0, 0, width, height);

    // button to return to levels scene
    levels.display();
    fill(0);
    text("Go to Levels", 350, 490);

    break;

  default:
  }
}

// changes scene when mouse is clicked
void mouseClicked() {
  switch (scene) {
  case TITLE: // title scene
    scene = Scene.LEVELS; // go to to levels scene
    break;

  case LEVELS: // level scene
    if (tutorial.mouseOver()) { // if tutorial button is chosen
      scene = Scene.TUTORIAL;   // go to tutorial scene
    }

    if (level1.mouseOver()) { // if EASY level is chosen
      scene = Scene.LEVEL1;   // go to level 1 scene

      float paddleLength = 250; // set paddle length (longest)

      // center the left and right paddles with the specified paddle length
      leftPaddle = new Paddle(20, height/2 - paddleLength/2, paddleLength, 20, "vertical");
      rightPaddle = new Paddle(width - 40, height/2 - paddleLength/2, paddleLength, 20, "vertical");

      // center the top and bottom paddles with the specified paddle length
      topPaddle = new Paddle(width/2 - paddleLength/2, 20, paddleLength, 20, "horizontal");
      bottomPaddle = new Paddle(width/2 - paddleLength/2, height - 40, paddleLength, 20, "horizontal");

      // reset timer
      timer.elapsedTime = millis();
      timer.timeLeft = 45;
      textSize(50);

      // reset ghost position with slow speed
      ghost = new Ghost(width/2, height/2, 40, 4, 3);
    }

    if (level2.mouseOver()) { // if MEDIUM level is chosen
      scene = Scene.LEVEL2;   // go to level 2 scene

      float paddleLength = 200; // set paddle length (medium)

      // center the left and right paddles with the specified paddle length
      leftPaddle = new Paddle(20, height/2 - paddleLength/2, paddleLength, 20, "vertical");
      rightPaddle = new Paddle(width - 40, height/2 - paddleLength/2, paddleLength, 20, "vertical");

      // center the top and bottom paddles with the specified paddle length
      topPaddle = new Paddle(width/2 - paddleLength/2, 20, paddleLength, 20, "horizontal");
      bottomPaddle = new Paddle(width/2 - paddleLength/2, height - 40, paddleLength, 20, "horizontal");

      // reset timer
      timer.elapsedTime = millis();
      timer.timeLeft = 45;
      textSize(50);

      // reset ghost position with faster speed
      ghost = new Ghost(width/2, height/2, 40, -5.7, 5.2);
    }

    if (level3.mouseOver()) { // if HARD level is chosen
      scene = Scene.LEVEL3;   // go to level 3 scene

      float paddleLength = 180; // set paddle length (shortest)

      // center the left and right paddles with the specified paddle length
      leftPaddle = new Paddle(20, height/2 - paddleLength/2, paddleLength, 20, "vertical");
      rightPaddle = new Paddle(width - 40, height/2 - paddleLength/2, paddleLength, 20, "vertical");

      // center the top and bottom paddles with the specified paddle length
      topPaddle = new Paddle(width/2 - paddleLength/2, 20, paddleLength, 20, "horizontal");
      bottomPaddle = new Paddle(width/2 - paddleLength/2, height - 40, paddleLength, 20, "horizontal");

      // reset timer
      timer.elapsedTime = millis();
      timer.timeLeft = 45;
      textSize(50);

      // reset ghost position with faster speed
      ghost = new Ghost(width/2, height/2, 40, -6, -5);

      // reset timer to hide ghost
      ghost.savedTime = millis();
      ghost.passedTime = 0;
    }
    break;

  case TUTORIAL:
    if (back.mouseOver()) { // if button is pressed
      scene = Scene.LEVELS;   // return to levels scene
    }
    break;

  case LOSE: // lose scene
    if (levels.mouseOver()) { // if button is pressed
      scene = Scene.LEVELS;   // return to levels scene
    }
    break;

  case WIN: // win scene
    if (levels.mouseOver()) { // if button is pressed
      scene = Scene.LEVELS;   // return to levels scene
    }
    break;

  default:
  }
}

// checks if the key is pressed
void keyPressed() {
  if (keyCode == LEFT) {          // if the left key is held down
    topPaddle.leftHeld = true;    // move the top paddle to the left
    bottomPaddle.leftHeld = true; // move the bottom paddle to the left
  }

  if (keyCode == RIGHT) {          // if the right key is held down
    topPaddle.rightHeld = true;    // move the top paddle to the right
    bottomPaddle.rightHeld = true; // move the bottom paddle to the right
  }

  if (keyCode == UP) {         // if the up key is held down
    leftPaddle.upHeld = true;  // move the left paddle upwards
    rightPaddle.upHeld = true; // move the right paddle upwards
  }

  if (keyCode == DOWN) {         // if the down key is held down
    leftPaddle.downHeld = true;  // move the left paddle downwards
    rightPaddle.downHeld = true; // move the right paddle downwards
  }
}

// checks if the key is no longer pressed
void keyReleased() {
  if (keyCode == LEFT) {           // if the left key is released
    topPaddle.leftHeld = false;    // stop the top paddle from moving to the left
    bottomPaddle.leftHeld = false; // stop the bottom paddle from moving to the left
  }

  if (keyCode == RIGHT) {           // if the right key is released
    topPaddle.rightHeld = false;    // stop the top paddle from moving to the right
    bottomPaddle.rightHeld = false; // stop the bottom paddle from moving to the right
  }

  if (keyCode == UP) {          // if the up key is released
    leftPaddle.upHeld = false;  // stop the left paddle from moving upwards
    rightPaddle.upHeld = false; // stop the right paddle from moving upwards
  }

  if (keyCode == DOWN) {          // if the down key is released
    leftPaddle.downHeld = false;  // stop the left paddle from moving downwards
    rightPaddle.downHeld = false; // stop the right paddle from moving downwards
  }
}
