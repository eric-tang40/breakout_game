class Block {
  
  int bx, by;
  int bwidth;
  color c;
  boolean alive;
  
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
  
  void destroy(Ball b) {
    this.alive = false;
    getScoreValue(b);
    numBlocks -=1;
  }
  
  boolean onBlock(Ball b) {
    if(bx <= b.cx + b.radius &&
      bx + BLOCK_SIZE >= b.cx - b.radius/2 &&
      by + BLOCK_SIZE +b.radius/2>= b.cy - b.radius &&
      by <= b.cy + b.radius) {
        return true;
      } //<>//
    else {
      return false;
    }
  }
  
  void blockBounce(Ball b) {
     if(b.cx - b.radius/2>= bx 
       && b.cx - b.radius/2<= bx+BLOCK_SIZE
       && b.cy + b.radius/2 >= by + BLOCK_SIZE 
       && alive){
         println("hit bottom");
         b.yvelocity *= -1;
      }
     else if(b1.cx >= bx
       && b.cx - b.radius/2<= bx+BLOCK_SIZE
       && b.cy - b.radius/2 <= by
       && alive){
         println("hit top"); 
         b.yvelocity *= -1;
      }
     else {
      b.xvelocity *= -1;
     }
  }//ybounce
  
  int getScoreValue(Ball b) {
    score += abs(b1.xvelocity) + abs(b1.yvelocity);
    return score;
  }//getScoreValue
}
