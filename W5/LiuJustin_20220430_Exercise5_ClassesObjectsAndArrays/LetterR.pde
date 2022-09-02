class LetterR {
  // instance variables
  float xDisp, yDisp;

  // constructor, takes arguments for letter's position
  LetterR(float xDisp, float yDisp) {
    this.xDisp = xDisp;
    this.yDisp = yDisp;
  }

  // updates xDisp and yDisp
  void update(float xDisp, float yDisp) {
    this.xDisp = xDisp;
    this.yDisp = yDisp;
  }

  // displays the letter R
  void display() {
    line(260+xDisp, 260+yDisp, 340+xDisp, 250+yDisp);
    line(340+xDisp, 250+yDisp, 330+xDisp, 270+yDisp);
    line(270+xDisp, 250+yDisp, 280+xDisp, 350+yDisp);
  }
}
