class MenuBar {
  PImage battery, wifi;
  ArrayList<MenuButton> menuButtons = new ArrayList<MenuButton>();
  
  MenuBar() {
    textAlign(LEFT, TOP);
    textSize(15);
    noStroke();
    
    // load images
    battery = loadImage("battery.png");
    wifi = loadImage("wifi.png");
  }
  
  // adds a button for a given function name (e.g. "File"), adjusting for size 
  void addButton(String funcName) {
    // 
    int lastIndex = menuButtons.size() - 1; // gets the index of the last item in menuButtons (will be -1 if empty)
    float newButtonX = 0;                   // initialize newButtonX at 0
    
    // if menuButtons is not empty, then use the last button in menuButtons to calculate the new button's x-position (newButtonX)
    // otherwise, the new button's x-position remains at 0 
    if (lastIndex > -1) {
      MenuButton lastButton = menuButtons.get(lastIndex);
      newButtonX = lastButton.xPos + lastButton.buttonWidth;
    }
    
    // create new menu button and add the object to the list of buttons
    MenuButton newButton = new MenuButton(newButtonX, 0, funcName);
    menuButtons.add(newButton);
  }

  void display() {
    // background of menu bar
    fill(170);
    rect(0, 0, width, 30);
    
    // display all of the buttons
    for (MenuButton b : menuButtons) {
      b.display();
    }
    
    // right side of menu bar
    image(battery, 1070, 2.5); // battery icon
    image(wifi, 1115, 5);      // wifi icon
    showTime();                // displays date and time
  }

  void showTime() {
    fill(0); // black font
    
    // get the date
    int d = day();
    int mon = month();
    int y = year();
    String date = nf(mon, 2) + "/" + nf(d, 2) + "/" + y;
    
    // get the time
    int h = hour();
    int min = minute();
    String time = nf(h, 2) + ":" + nf(min, 2);
    
    // combine date and time into one string and display it
    String dateTime = date + "   " + time;
    text(dateTime, 1150, 5);
  }
}
