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
        grid[r][i] = new Block(r*BLOCK_SIZE, 75 + i*BLOCK_SIZE, BLOCK_SIZE); 
      }
    } 
  }
  
  void checkBlock() {
    for (int r=0; r<grid.length; r++) {
      for(int i=0; i<grid[r].length; i++) {
        grid[r][i].display();// to display each block
        if(grid[r][i].onBlock(b1)) {
          if(grid[r][i].alive) {
            b1.blockBounce();
            grid[r][i].destroy();
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
