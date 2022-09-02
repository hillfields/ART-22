int lengthLine = 0;
float circleKeep = 0;
float circleKeep2 = PI;

void setup() {
  size(700, 700);
  background(255);
}

void draw() {
  // vertical lines
  line(175, 0, 175, lengthLine);
  line(350, 0, 350, lengthLine);
  line(525, 0, 525, lengthLine);

  // horizontal lines
  line(0, 175, lengthLine, 175);
  line(0, 350, lengthLine, 350);
  line(0, 525, lengthLine, 525);

  // increment length of line
  lengthLine += 4;

  // oval
  noFill();
  circleKeep += PI/90;
  arc(width/2, height/2, 200, 50, 0, circleKeep);

  circleKeep2 += PI/90;
  arc(width/2, height/2, 350, 350, PI, circleKeep2);
  arc(width/2, height/2, 250, 250, PI, circleKeep2);
  arc(width/2, height/2, 700, 700, PI, circleKeep2);
}

void mousePressed() {
  background(255);
  lengthLine = 0;
  circleKeep = 0;
  circleKeep2 = PI;
}
