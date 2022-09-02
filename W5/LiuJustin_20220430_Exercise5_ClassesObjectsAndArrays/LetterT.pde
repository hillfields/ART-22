class LetterT {
  // instance variables
  float xDisp, yDisp;

  // constructor, takes arguments for letter's position
  LetterT(float xDisp, float yDisp) {
    this.xDisp = xDisp;
    this.yDisp = yDisp;
  }

  // updates xDisp and yDisp
  void update(float xDisp, float yDisp) {
    this.xDisp = xDisp;
    this.yDisp = yDisp;
  }

  // displays the letter T
  void display() {
    line(360+xDisp, 250+yDisp, 440+xDisp, 250+yDisp);
    line(440+xDisp, 250+yDisp, 425+xDisp, 265+yDisp);
    line(400+xDisp, 260+yDisp, 400+xDisp, 340+yDisp);
    noFill();
    arc(390+xDisp, 340+yDisp, 20, 20, 0, PI/2);
  }
}
