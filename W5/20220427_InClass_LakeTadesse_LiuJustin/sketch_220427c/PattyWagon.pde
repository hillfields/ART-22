/*
 * Course: ART 22 - Computer Programming for the Arts
 * Assignment: Box Car Derby
 *
 * by Lake Tadesse and Justin Liu
 * 
 * Initiated: 4/27/22
 * Last updated: 4/27/22
 * 
 * CITATIONS: List all sources you used for this assignment.
 *
 * NOTE:
 * Runs car
 * 
 * */

class PattyWagon {
  float h, xPos, yPos, minSpeed, maxSpeed, speed, hscale;

  PattyWagon(float h, float yPos, float minSpeed, float maxSpeed) {
    this.h = h;
    this.yPos = yPos;
    this.minSpeed = minSpeed;
    this.maxSpeed = maxSpeed;

    hscale = h/210; // scale to given height
    textSize(24);   // text size

    this.randomize();
  }

  void randomize() {
    speed = random(this.minSpeed, this.maxSpeed);
  }

  void display() {
    // divide every single val by max *height*/width
    scale(hscale);

    push();
    translate(xPos, 0);

    // patty
    fill(#5F2905);
    ellipse(180, 135+yPos, 330, 50);

    // bottom bun
    fill(#E8BB59);
    arc(180, 155+yPos, 300, 150, 0, PI, CHORD);

    // lettuce
    fill(0, 255, 0);
    ellipse(180, 105+yPos, 330, 20);

    // tomato
    fill(255, 0, 0);
    ellipse(180, (95+yPos), 250, 30);

    // top bun
    fill(#E8BB59);
    arc(180, 95+yPos, 300, 150, PI, 2*PI, CHORD);

    // outer wheels
    fill(0);
    circle(100, 220+yPos, 40);
    circle(260, 220+yPos, 40);

    // inner wheels
    fill(110);
    circle(100, 220+yPos, 20);
    circle(260, 220+yPos, 20);

    //outer eyes
    fill(255);
    circle(150, 50+yPos, 50);
    circle(200, 50+yPos, 50);

    //pupil
    fill(0);
    circle(154, 40+yPos, 20);
    circle(193, 59+yPos, 20);

    // text
    fill(0);
    text("Patty Wagon", 120, yPos);

    pop();
  }

  void update() {
    xPos += speed;
  }
}
