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

  fill(0);
  if (i < 300) {
    i += 2;
  }
  rect(width/2 - 150, 500, i, 30);
}

void keyPressed() {
  fill(122);
  i = 0;
}
