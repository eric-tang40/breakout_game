class Paddle {

   int pwidth, pheight;
   int px, py;


  Paddle() {
    pwidth = PADDLE_WIDTH;
    pheight = PADDLE_HEIGHT;
    px = 500;
    py = 650;
  }//default constructor

  void display() {
    rect(px,py,pwidth,pheight);
  }//display

  void move(int x) {
    px+=x;
  }//move

  void hit(Ball b) {
    if(b.onBall) {
      b.paddleBounce(); //something about pythagorean theorem 
    }
  }

}//Paddle
