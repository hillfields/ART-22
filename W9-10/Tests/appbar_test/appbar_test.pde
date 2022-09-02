App note, image, music, internet;

void setup() {
  size(1280, 800);
  textAlign(LEFT, TOP);
  noStroke();
  
  note = new App(30, height - 80, "note.png");
  image = new App(110, height - 80, "image.png");
  music = new App(190, height - 80, "music.png");
  internet = new App(270, height - 80, "internet.png");
  
}

void draw() {
  background(255);
  
  // bottom bar
  fill(170);
  rect(0, height-80, width, 80);

  // apps
  note.display();
  image.display();
  music.display();
  internet.display();
}
