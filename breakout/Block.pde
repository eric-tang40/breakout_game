class Block {
  
  int bx, by;
  int bwidth;
  color c;
  int health;
  boolean alive;
  
  Block(int _x, int _y, int size) {
    health = 1;
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
      if(curLevel == 1 && health == 1) {
        fill(125,255,21,150);
      }
      else if(curLevel == 2) {
        if(health == 2) {
          fill(125,255,21,150);
        }
        else if(health == 1) {
          fill(125,255,21,90);
        }
      }
      else if(curLevel == 3) {
        if(health == 3) {
          fill(125,255,21,150);
        }
        else if(health == 2) {
          fill(125,255,21,90);
        }
        else if(health == 1) {
          fill(125,255,21,40);
        }
      }
      else {
        fill(125,255,21,100);
      }
      stroke(#21FFF2, 240);
      square(bx,by, bwidth);
    }
  }
  
  void increaseHealth(int x) {
    health = x;
  }
  
  void destroy(Ball b) {
    if(health == 0) {
      this.alive = false;
      getScoreValue(b);
      numBlocks -=1;
    }
  }
  
  boolean onBlock(Ball b) {
    if(bx <= b.cx + b.radius &&
      bx + BLOCK_SIZE >= b.cx -b.radius &&
      by + BLOCK_SIZE +b.radius/2>= b.cy - b.radius &&
      by <= b.cy + b.radius) {
        return true;
      } //<>//
    else {
      return false;
    }
  }
  
  void blockBounce(Ball b) {
     if(b.cx + b.radius/2>= bx 
       && b.cx - b.radius/2<= bx+BLOCK_SIZE
       && b.cy >= by + BLOCK_SIZE 
       && alive){
         health -= 1;
         b.yvelocity *= -1;
      }
     else if(b1.cx >= bx
       && b.cx - b.radius/2<= bx+BLOCK_SIZE
       && b.cy <= by 
       && alive){
         health -= 1;
         b.yvelocity *= -1;
      }
     else {
         health -= 1;
         b.xvelocity *= -1;
     }
  }//ybounce
  
  int getScoreValue(Ball b) {
    score += abs(b.xvelocity) + abs(b.yvelocity);
    return score;
  }//getScoreValue
}
