int PADDLE_WIDTH = 100;
int PADDLE_HEIGHT = 25;
int BALL_SIZE = 10;
int BLOCK_WIDTH = 270;
int BLOCK_HEIGHT = 270;
Paddle p;
Ball b1;
Block block1;

void setup() {
  size(1000,700);
  p = new Paddle();
  b1 = new Ball();
  block1 = new Block();
}

void draw() {
  background(0);
  p.display();
  p.move(mouseX);
  
  b1.display();
  b1.move();
  if(b1.onPaddle(p.px, p.py)) {
    b1.paddleBounce();
  }
  
  block1.display();
  if(b1.onBlock(block1.bx, block1.by)) {
    b1.blockBounce(0);
  }
  if(b1.onBlockSide(block1.bx, block1.by)) {
    b1.blockBounce(1);
  }
}
