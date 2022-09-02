MenuBar menubar;

void setup() {
  size(1280, 800);
  textAlign(LEFT, TOP);
  noStroke();
  
  menubar = new MenuBar();
  menubar.addButton("Power");
  menubar.addButton("File");
  menubar.addButton("Edit");
  menubar.addButton("Window");
}

void draw() {
  background(255);
  menubar.display();
}
