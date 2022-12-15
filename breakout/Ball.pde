class Ball {

  int cx, cy;
  int xvelocity, yvelocity;
  int radius;

  //constructor
  Ball() {
    radius = BALL_SIZE;
    reset();
  }//default constructor

  //Ball(int x, int y) {
  //  radius = BALL_SIZE;
  //  cx = x;
  //  cy = y;
  //  xvelocity = int(random(5)+1) * (-1 * int(random(2+1)));
  //  yvelocity = int(random(5)+1) * (-1 * int(random(2+1)));
  //}//position constructor

  void reset() {
    cx = width/2;
    cy = height-100;
    xvelocity = 10; 
    yvelocity = 10;
    //xvelocity = int(random(5)+1) * (-1 * int(random(2)+1));
    //yvelocity = int(random(5)+1) * (-1 * int(random(2)+1));
  }//resetBall

  void display() {
    circle(cx, cy, radius * 2);
  }//display

  void move() {
    if (cx <= radius || cx >= (width - 1 - radius)) {
      xvelocity*= -1;
    }
    if (cy <= radius) {
      yvelocity*= -1;
    }
    if(cy >= (height-1-radius)) {
      this.reset();
    }
    cx+= xvelocity;
    cy+= yvelocity;
  }//moveBall

  void paddleBounce() {
    yvelocity*= -1;
    cy += yvelocity;
  }//xbounce

  //void ybounce() {
  //  yvelocity*= -1;
  //  cy += yvelocity;
  //}//ybounce

  void changeSpeed(int x, int y) {
    xvelocity+= x;
    yvelocity+= y;
  }//changeSpeed

  //boolean onBall(int x, int y) {
  //  float d = dist(x, y, cx, cy);
  //  return d <= radius;
  //}//onBall
  boolean onPaddle(int x, int y) {
    for(int i=0; i < PADDLE_WIDTH; i++){
      float d = dist(this.cx,this.cy, x+i, y);
      if(d<=this.radius){
        return true;
      }
    }
    return false;
  }
  
  boolean onBlock(int x, int y) {
    for(int i=0; i < BLOCK_WIDTH; i++){
      float d = dist(this.cx,this.cy, x+i, y);
      if(d<=this.radius){
        return true;
      }
    }
    return false;
  }
}//Ball
