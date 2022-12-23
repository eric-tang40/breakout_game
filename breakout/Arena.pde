class Arena {
  Block[][] grid;
  int numRows, numCols;
  int margin_x, margin_y;
  
  Arena(int rows, int columns) {
    this.numRows = rows;
    this.numCols = columns;
    grid = new Block[numCols][numRows];
    setupArena();
  }
  
  Arena(int rows, int columns, int spacex, int spacey) {
    this.numRows = rows ;
    this.numCols = columns;
    grid = new Block[numCols][numRows];
    setupArena();
    margin_x = spacex;
    margin_y = spacey;
  }
  
  void setupArena() {
    for (int r=0; r<grid.length; r++) {
      margin_y += 50;
      for(int i=0; i<grid[r].length; i++) { 
              margin_x += 8;
        // set bx and by for each block
        grid[r][i] = new Block(i*BLOCK_SIZE + margin_x, 30 + r*BLOCK_SIZE + margin_y, BLOCK_SIZE); 
      }
      margin_x = 5;
    } 
  }
  
  void blockHealth(int x) {
    for (int r=0; r<grid.length; r++) {
      for(int i=0; i<grid[r].length; i++) {
        grid[r][i].increaseHealth(x);
      }
    }
  }
  
  void checkBlock() {
    for (int r=0; r<grid.length; r++) {
      for(int i=0; i<grid[r].length; i++) {
        grid[r][i].display();// to display each block
        if(curLevel == 1) {
          if(grid[r][i].onBlock(b1)) {
            if(grid[r][i].alive) {
              grid[r][i].blockBounce(b1);
              grid[r][i].destroy(b1);
          }
        }
        }
        if(curLevel == 2) {
          if(grid[r][i].onBlock(b2)) {
            if(grid[r][i].alive) {
              grid[r][i].blockBounce(b2);
              grid[r][i].destroy(b2);
            }
        }
        }
        if(curLevel == 3) {
          if(grid[r][i].onBlock(b3)) {
            if(grid[r][i].alive) {
              grid[r][i].blockBounce(b3);
              grid[r][i].destroy(b3);
            }
        }
        }
        }
    }
   }
   
   void reset() {
     for (int r=0; r<grid.length; r++) {
      for(int i=0; i<grid[r].length; i++) {
        grid[r][i].reset();
      }
     }
   }
   
  }
