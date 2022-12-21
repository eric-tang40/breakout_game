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
        grid[r][i] = new Block(r*BLOCK_SIZE, i*BLOCK_SIZE, BLOCK_SIZE); 
      }
    } 
  }
  
  void checkBlock() {
    for (int r=0; r<grid.length; r++) {
      for(int i=0; i<grid[r].length; i++) {
        grid[r][i].display(); // to display each block
        if(b1.onBlock(grid[r][i].bx, grid[r][i].by)) {
          if(grid[r][i].alive) {
            b1.blockBounce(0);
            grid[r][i].destroy();
          }
        if(b1.onBlockSide(grid[r][i].bx, grid[r][i].by)) {
           if(grid[r][i].alive) {
             b1.blockBounce(1);
             grid[r][i].destroy();
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
