PattyWagon pattyWagon;

void setup() {
  size(500, 500);
  pattyWagon = new PattyWagon(240.0, 50.0, 0.0, 4.0);
}

void draw() {
  background(255);
  pattyWagon.update();
  pattyWagon.display();
}
