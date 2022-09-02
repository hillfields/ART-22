Folder folder, folder1;

void setup() {
  size(700, 700);
  
  folder = new Folder(30, 30, "images");
  folder1 = new Folder(30, 150, "20X1");
}

void draw() {
  background(255);
  folder.display();
  folder1.display();
}
