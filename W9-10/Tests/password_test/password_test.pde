float i;

void setup() {
  size(1280, 800);

  background(122);
  i = 0;
}

void draw() {
  fill(0);
  rect(width/2 - 100, 200, 200, 200);
  
  fill(255);
  noStroke();
  rect(width/2 - 150, 500, 300, 30);
  //fill(0);
  //circle(width/2 - 150 + 15, 515, 15);
  //circle(width/2 - 150 + 15 + 22.5, 515, 15);
  //circle(width/2 - 150 + 15 + 45, 515, 15);
  //circle(width/2 - 150 + 15 + 67.5, 515, 15);
  //circle(width/2 - 150 + 15 + 90, 515, 15);
  //circle(width/2 - 150 + 15 + 112.5, 515, 15);
  //circle(width/2 - 150 + 15 + 135, 515, 15);
  //circle(width/2 - 150 + 15 + 157.5, 515, 15);
  //circle(width/2 - 150 + 15 + 180, 515, 15);

  fill(0);
  for (int numCircles = 0; numCircles < i; numCircles += 1) {
    circle(width/2 - 135 + 22.5 * numCircles, 515, 15);
  }

  if (frameCount % 5 == 0 && i < 10) {
    i++;
  }
}

void keyPressed() {
  fill(122);
  i = 0;
}
