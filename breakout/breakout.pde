int PADDLE_WIDTH = 150;
int PADDLE_HEIGHT = 25;
int BALL_SIZE = 10;
int rows = 10;
int columns = 4;
int BLOCK_SIZE = 100;
int score = 0;
int side = 0;
boolean isMenu;
boolean curPlaying;
boolean isPlaying;
boolean isLost;
Paddle p;
Ball b1; 
Menu m;
Arena a;

void setup() {
  isMenu = true;
  isPlaying = false;
  isLost = false;
  frameRate(30);
  size(1000,700);
  p = new Paddle();
  b1 = new Ball();
  a = new Arena(rows, columns);
}

void draw() {
  if(isMenu) {
    frameRate(20);
    background(#3CC1B9);
    textSize(100);
    fill(0);
    text("BREAKOUT", width/4+50, height/4+100);
    textSize(30);
    text("Click Anywhere to Play", width/4+120, height/2+120);
    m = new Menu(10);
  }
  else if(isLost) {
    frameRate(30);
    background(#3CC1B9);
    textSize(100);
    text("YOU DIED", width/4+50, height/4+100);
    textSize(30);
    text("Click Anywhere to Play Again", width/4+70, height/2+120);
  }
  else if(isPlaying) {
    frameRate(30);
    background(#979896);
    p.display();
    p.move(mouseX - PADDLE_WIDTH/2);
    b1.display();
    b1.move();
    if(p.onPaddle(b1)) {
      b1.paddleBounce();
    }
    a.checkBlock();
    fill(0);
    textSize(40);
    text("Score: " + score, 50, 50);
  }
}

void keyPressed() {
  if(key == ' ' && curPlaying == false) {
    b1.run();
  }
}

void mousePressed() {
  if(mousePressed) {
    isMenu = false;
    isPlaying = true;
    if(isPlaying != true) {
      isLost = true;
    }
    if(isLost) {
      isLost = false;
    }
  }
}
