int PADDLE_WIDTH = 100;
int PADDLE_HEIGHT = 25;
int BALL_SIZE = 10;
int rows = 10;
int columns = 4;
int BLOCK_SIZE = 100;
int score = 0;
Paddle p;
Ball b1;
Arena a;

void setup() {
  size(1000,700);
  p = new Paddle();
  b1 = new Ball();
  a = new Arena(rows, columns);
}

void draw() {
  background(0);
  p.display();
  p.move(mouseX - PADDLE_WIDTH/2);
  
  b1.display();
  b1.move();
  if(b1.onPaddle(p.px, p.py)) {
    b1.paddleBounce();
  }
  a.checkBlock();
}

void keyPressed() {
  if(key == ' ' ) {
    b1.run();
  }
}
