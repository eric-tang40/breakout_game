int PADDLE_WIDTH = 150;
int PADDLE_HEIGHT = 25;
int BALL_SIZE = 10;
int rows = 10;
int columns = 4;
int BLOCK_SIZE = 100;
int score = 0;
int side = 0;
boolean isMenu;
Paddle p;
Ball b1;
Arena a;

void setup() {
  isMenu = true;
  frameRate(30);
  size(1000,700);
  p = new Paddle();
  b1 = new Ball();
  a = new Arena(rows, columns);
}

void draw() {
  if(isMenu) {
    background(0);
    textSize(100);
    text("BREAKOUT", width/4+50, height/4+100);
    textSize(30);
    text("Click Anywhere to Play", width/4+140, height/2+120);
  }
  else{
    background(#979896);
    p.display();
    p.move(mouseX - PADDLE_WIDTH/2);
    b1.display();
    b1.move();
    if(p.onPaddle(b1)) {
      b1.paddleBounce();
    }
    a.checkBlock();
  }
}

void keyPressed() {
  if(key == ' ' ) {
    b1.run();
  }
}

void mousePressed() {
  if(mousePressed) {
    isMenu = false;
  }
}
