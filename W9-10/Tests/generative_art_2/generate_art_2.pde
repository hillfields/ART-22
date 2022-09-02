float lengthLine = 0;

void setup() {
  size(700, 700);
  background(255);
}

void draw() {
  for (int i = 0; i < width; i += 25) {
    line(i, 0, i, lengthLine);
    line(0, i, lengthLine, i);
  }
  
  
  
  //// vertical lines
  //line(175, 0, 175, lengthLine);
  //line(350, 0, 350, lengthLine);
  //line(525, 0, 525, lengthLine);

  //// horizontal lines
  //line(0, 175, lengthLine, 175);
  //line(0, 350, lengthLine, 350);
  //line(0, 525, lengthLine, 525);

  // increment length of line
  lengthLine += 0.6;
}
