class Block {
  
  int bx, by;
  int bwidth, bheight;
  color c;
  boolean alive;
  
  Block() {
    this.reset();
  }
  
  void reset() {
    bx = 500;
    by = 200;
    bwidth = BLOCK_WIDTH;
    bheight = height/10;
    c = 255;
    alive = true;
  }
  
  void display() {
    rect(bx,by,bwidth, bheight);
  }
  
  void destroy() {
  }
  
}
  
  //int getScoreValue() {
  //  int score = abs(xvelocity) + abs(yvelocity);
  //  return score;
  //}//getScoreValue
