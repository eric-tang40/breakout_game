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
      square(bx,by, bwidth);
    }
  }
  
  void destroy() {
    this.alive = false;
    getScoreValue();
    println(score);
  }
  
  int getScoreValue() {
    score += abs(b1.xvelocity) + abs(b1.yvelocity);
    return score;
  }//getScoreValue
}
