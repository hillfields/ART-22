class WordART {
  // instance variables
  LetterA letterA;
  LetterR letterR;
  LetterT letterT;

  // constructor, takes arguments for letters' positions
  WordART(float xDispA, float yDispA,
    float xDispR, float yDispR,
    float xDispT, float yDispT) {
    letterA = new LetterA(xDispA, yDispA);
    letterR = new LetterR(xDispR, yDispR);
    letterT = new LetterT(xDispT, yDispT);
  }

  // updates xDisp and yDisp for all letters
  void update(float xDispA, float yDispA,
    float xDispR, float yDispR,
    float xDispT, float yDispT) {
    letterA.update(xDispA, yDispA);
    letterR.update(xDispR, yDispR);
    letterT.update(xDispT, yDispT);
  }

  // displays each letter of the word ART
  void display() {
    letterA.display();
    letterR.display();
    letterT.display();
  }
}
