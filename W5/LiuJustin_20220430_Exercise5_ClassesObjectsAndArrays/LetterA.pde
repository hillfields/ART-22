class LetterA {
  // instance variables
  float xDisp, yDisp;

  // constructor, takes arguments for letter's position
  LetterA(float xDisp, float yDisp) {
    this.xDisp = xDisp;
    this.yDisp = yDisp;
  }

  // updates xDisp and yDisp
  void update(float xDisp, float yDisp) {
    this.xDisp = xDisp;
    this.yDisp = yDisp;
  }

  // displays the letter A
  void display() {
    line(200+xDisp, 250+yDisp, 160+xDisp, 350+yDisp);
    line(160+xDisp, 350+yDisp, 225+xDisp, 312.5+yDisp);
    line(210+xDisp, 275+yDisp, 240+xDisp, 350+yDisp);
  }
}
