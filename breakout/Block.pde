class Block {
  
  int bx, by;
  int bwidth;
  color c;
  boolean alive;
  
  Block() {
    this.reset();
  }
  
  Block(int _x, int _y, int size) {
    this.reset();
    bx = _x;
    by = _y;
    bwidth = size;
  }
  
  void reset() {
    c = 255;
    alive = true;
  }
  
  void display() {
    if(this.alive) {
      fill(125,255,21,100);
      stroke(#21FFF2, 240);
      square(bx,by, bwidth);
    }
  }
  
  void destroy() {
    this.alive = false;
    getScoreValue();
    numBlocks -=1;
  }
  
  boolean onBlock(Ball b) {
    if(bx <= b.cx + b.radius &&
      bx + BLOCK_SIZE >= b.cx  &&
      by + BLOCK_SIZE +b.radius/2>= b.cy - b.radius &&
      by <= b.cy + b.radius) {
        return true;
      } //<>//
    else {
      return false;
    }
  }
  
  void blockBounce() {
     if(b1.cx >= bx 
       && b1.cx <= bx+BLOCK_SIZE
       && b1.cy + b1.radius/2 >= by + BLOCK_SIZE 
       && alive){
         println("hit bottom");
         b1.yvelocity *= -1;
      }
    //else if(b1.cx >= bx + BLOCK_SIZE/2 
    //   && b1.cy - b1.radius/2>= by
    //   && b1.cy + b1.radius/2<= by +BLOCK_SIZE
    //   && alive){
    //     println("hit right");
    //     b1.xvelocity *= -1;
    //  }
    // else if(b1.cx<= bx + BLOCK_SIZE/2 
    //   && b1.cy - b1.radius/2 >= by
    //   && b1.cy + b1.radius/2<= by +BLOCK_SIZE
    //   && alive){
    //     println("hit left");
    //     b1.xvelocity *= -1;
    //  }
     else if(b1.cx >= bx
       && b1.cx <= bx+BLOCK_SIZE
       && b1.cy - b1.radius/2 <= by
       && alive){
         println("hit top"); 
         b1.yvelocity *= -1;
      }
     else {
      b1.xvelocity *= -1;
     }
  }//ybounce
  
  int getScoreValue() {
    score += abs(b1.xvelocity) + abs(b1.yvelocity);
    return score;
  }//getScoreValue
}
