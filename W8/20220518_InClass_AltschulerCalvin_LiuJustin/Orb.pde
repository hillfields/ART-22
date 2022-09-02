class Orb {

  float x, y;
  float size = 25;
  ArrayList<Orb> connections = new ArrayList<Orb>();


  Orb(float x, float y) {
    this.x = x;
    this.y = y;
  }

  void displayEdges() {
    if (connections.size() > 0) {
      for (int i = 0; i < connections.size(); i++) {
        push();
        line(x, y, connections.get(i).x, connections.get(i).y);
        pop();
      }
    }
  }

  void displayNode() {
    circle(x, y, size);
  }

  void randomize() {
    x = random(width);
    y = random(height);
  }

  void addConnection(Orb partner) {
    this.connections.add(partner);
  }

  void addConnections(ArrayList<Orb> connections) {
    for (Orb i : connections) {
      if (this == i) {
        continue;
      }
      this.connections.add(i);
    }
  }



  void wiggle() {
    x += random(-1, 1);
    if (x > width) {
      x = 0;
    }
    if (x < 0) {
      x = width;
    }
  }
}
