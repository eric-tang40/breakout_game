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

  Ball(int x, int y) {
    radius = BALL_SIZE;
    cx = x;
    cy = y;
    xvelocity = 5;
    yvelocity = 5;
  }//position constructor

  void reset() {
    xspeed = 10;
    cx = width/2;
    cy = height-150;
    xvelocity = 0; 
    yvelocity = 0;
    d = 0;
    lives -=1;
  }//resetBall
  
  void run() {
    xvelocity = xspeed * sin(radians(d));
    yvelocity = xspeed * cos(radians(d));
    curPlaying = true;
  }

  void display() {
    fill(125,255,21,100);
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
    if(cy >= (p.py + this.radius/2)) {
      this.reset();
      curPlaying = false;
      if(lives == 0) {
        a.reset();
        isLost = true;
        isPlaying = false;
        score = 0;
      }
    }
    cx+= xvelocity;
    cy+= yvelocity;
  }//moveBall

  void paddleBounce() {
    float distance;
    float angle;
    if(b1.cx > p.px && b1.cx < p.px + PADDLE_WIDTH/2) {
      distance = b1.cx- p.px;
      angle = -0.6 * distance + 135;
      xvelocity = xspeed * cos(radians(angle));
      yvelocity = xspeed * sin(radians(angle));
    }
    else if (b1.cx > p.px + PADDLE_WIDTH/2 && b1.cx < p.px + PADDLE_WIDTH) {
      distance = (b1.cx-PADDLE_WIDTH/2)- p.px; //distance between middle of paddle and ball
      angle = -0.643 * distance + 90;
      xvelocity = xspeed * cos(radians(angle));
      yvelocity = xspeed * sin(radians(angle));
    }
    else { 
      angle = 90;
      xvelocity = xspeed * cos(radians(angle));
      yvelocity = xspeed * sin(radians(angle));
    }
    yvelocity *= -1;
    cy += yvelocity;
  }//xbounce

  void changeSpeed(int x, int y) {
    xvelocity+= x;
    yvelocity+= y;
  }//changeSpeed
}//Ball
