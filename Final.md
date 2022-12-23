# Project 01 For NeXT CS
### Class Period:4
### Name0: Eric Tang
### Name1: Jonathan Yap
#### Selected Game: Breakout
---

### How To Play

- Click on the Welcome Screen to Continue
- Select Your Difficulty by Clicking on a Square
- Press Space to Get the Ball Moving
- Use your Mouse to Move the Paddle
- Destroy all the Blocks by Bouncing the Ball off of them
- Don't let the Ball get Below the Paddle
- You win once all the Blocks are Destroyed
- If you win or lose, click to Play Again

---

### Features

- there is a menu which allows you to choose dificulty
- there are lives and a life counter
- there are scores and a score counter
- There is a paddle
- Paddle() creates the paddle
- display() shows the paddle
- move() moves the paddle
- onPaddle() checks if the ball is on the paddle
- there is a ball
- ball() creares a ball used at the start of the game
- Ball(int x, int y, int speed) creates a ball when the game resets, and it doesnt change the angle the ball is moving at
- run() makes the ball move before it hits an object
- display() displays the ball on the screen
- move() makes the ball move after it hits the edge of the screen
- paddleBounce() checks if the ball is hitting the paddle and where, so that it can make the apporpiate chnages to how the ball moves.
- changeSpeed() sets the speed
- there is a block
- Block(int _x, int _y, int size) creates the bkock
- Block() yo we should prob delete this method and this line
- reset() resets the color and makes the block function 
- display() displays the block
- destroy() removes the block from the game and updates the score
- onBlock() checks if the ball is hitting the block 
- blockBounce() chooses how the ball bounces off the block depending on where it hits
- getScoreValue() updates the score
- there is a menu
- Menu() cretes a menu
- setupMenu() adds balls to the background of the menu
- there is an arena
- Arena() creates multiple blocks
- setupArena() sets up multiple blocks
- checkBlock() checks if the ball hits the block
- reset() recreates the grid of blocks again
- there is a menu, where you can start to play
- there is a place where you can choose your difficulty
- there is a screen if you won
- there is a screen if you lost

---

### Changes
What changed about your game after the design phase? Separate changes that occured after the feedback round and changes that occured during programming.

- we added a menu
- you can change your difficulty
- we changed the color of the block and balls
- we added a win and lose screen
