class Timer {
  // instance variables
  int elapsedTime, timeLeft;

  // constructor
  Timer(int elapsedTime, int timeLeft) {
    this.elapsedTime = elapsedTime;
    this.timeLeft = timeLeft;
  }

  // display the time left
  void display() {
    text(timer.timeLeft, 350, 350);
  }
}
