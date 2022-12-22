class Menu {
  Ball[] b;
  int numBalls;
  
  Menu(int balls) {
    numBalls = balls;
    b = new Ball[numBalls];
    setupMenu();
  }
  
  void setupMenu() {
    for(int i=0; i<numBalls; i++) {
      b[i] = new Ball(int(random(1000)), int(random(700)));
      b[i].display();
    }
  }
  
}
