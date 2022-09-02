/*
 * Course: ART 22  - Computer Programming for the Arts
 * Assignment: In Class
 *
 * by Calvin Altschuler and Justin Liu
 * 
 * Initiated: 5/18/22
 * Last updated: 5/18/22
 * 
 *
 * NOTE: Click to add orbs to the network
 * 
 * */

ArrayList<Orb> orbs;
StringList colors = new StringList();

void setup() {
  size(500, 500);
  orbs = new ArrayList<Orb>();
}

void draw() {
  background(155);
  int j = 0;
  for (Orb i : orbs) {
    push();
    stroke(unhex(colors.get(j)));
    j++;
    i.displayEdges();
    pop();
  }
  for (Orb i : orbs) {
    i.displayNode();
    i.wiggle();
  }
}
void addColor() {
  color c = color(random(155, 255), random(155, 255), random(155, 255));
  colors.append(hex(c));
}
void mousePressed() {
  orbs.add(new Orb(mouseX, mouseY));
  for (Orb i : orbs) {
    i.addConnections(orbs);
  }
  addColor();
}
