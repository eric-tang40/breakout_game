class Ball {

  int cx, cy;
  float xvelocity, yvelocity;
  int xspeed;
  int radius;
  float d;

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
    xspeed = 14;
    cx = width/2;
    cy = height-200;
    xvelocity = 0; 
    yvelocity = 0;
    d = 135;
  }//resetBall
  
  void run() {
    xvelocity = xspeed * sin(radians(d));
    yvelocity = xspeed * cos(radians(d));
  }

  void display() {
    circle(cx, cy, radius * 2);
  }//display

  void move() {
    if (cx + radius/2 <= radius || cx - radius/2 >= (width - 1 - radius)) {
      xvelocity*= -1;
      cx += xvelocity;
    }
    if (cy <= radius) {
      yvelocity*= -1;
      cy += yvelocity;
    }
    if(cy >= (height-1-radius)) {
      this.reset();
      a.reset();
    }
    cx+= xvelocity;
    cy+= yvelocity;
  }//moveBall

  void paddleBounce() {
    //int angle;
    if(b1.cx > p.px && b1.cx < p.px + PADDLE_WIDTH/2) {
      xvelocity = -xspeed * sin(radians(135));
      yvelocity = -xspeed * cos(radians(135));
    }
    else if (b1.cx > p.px + PADDLE_WIDTH/2 && b1.cx < p.px + PADDLE_WIDTH) {
      xvelocity = xspeed * sin(radians(45));
      yvelocity = xspeed * cos(radians(45));
    }
    else { 
      xvelocity = xspeed * sin(radians(90));
      yvelocity = xspeed * cos(radians(90));
    }
    yvelocity *= -1;
    cy += yvelocity;
  }//xbounce

  void blockBounce() {
    yvelocity *= -1;
  }//ybounce

  void changeSpeed(int x, int y) {
    xvelocity+= x;
    yvelocity+= y;
  }//changeSpeed
}//Ball
