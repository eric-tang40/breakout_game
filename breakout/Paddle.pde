class Paddle {

   int pwidth, pheight;
   int px, py;


  Paddle() {
    pwidth = PADDLE_WIDTH;
    pheight = PADDLE_HEIGHT;
    px = width/2;
    py = height-50;
  }//default constructor
  
  void display() {
    rect(px,py,pwidth,pheight);
  }//display

  void move(int x) {
    px = x;
  }//move
  
  boolean onPaddle(Ball b) {
    if (px <= b.cx && b.cx <= px + PADDLE_WIDTH && py < b.cy+b.radius)
        return true;
    else
        return false;
    }
  }
  
//Paddle
