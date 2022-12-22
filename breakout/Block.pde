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
  }
  
  boolean onBlock(Ball b) {
    if(bx<b.cx + b.radius/2 &&
      bx + BLOCK_SIZE > b.cx + b.radius/2 &&
      by + BLOCK_SIZE > b.cy - b.radius/2 &&
      by < b.cy + b.radius/2) {
        return true;
      } //<>//
    else {
      return false;
    }
  }
  
  int getScoreValue() {
    score += abs(b1.xvelocity) + abs(b1.yvelocity);
    return score;
  }//getScoreValue
}
