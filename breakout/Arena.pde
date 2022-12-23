class Arena {
  Block[][] grid;
  int numRows, numCols;
  
  Arena(int rows, int columns) {
    this.numRows = rows;
    this.numCols = columns;
    grid = new Block[numRows][numCols];
    setupArena();
  }
  
  void setupArena() {
    for (int r=0; r<grid.length; r++) {
      for(int i=0; i<grid[r].length; i++) { 
        // set bx and by for each block
        grid[r][i] = new Block(r*BLOCK_SIZE, 100 + i*BLOCK_SIZE, BLOCK_SIZE); 
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
