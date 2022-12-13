# Project 01 For NeXT CS
### Class Period: 4
### Name0: Eric Tang
### Name1: Jonathan Yap
---


Your mission is to recreate one of these two classic arcade games:
- Breakout/Arkanoid [demo 0](https://elgoog.im/breakout/)  [demo 1](https://www.crazygames.com/game/atari-breakout)
- Space Invaders [demo 0](https://elgoog.im/space-invaders/) [demo 1](https://www.crazygames.com/game/space-invaders)

This project will be completed in phases. The first phase will be to work on this document. Use markdown formatting. For more markdown help [click here](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) or [here](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)


---

## Phase 0: Game Selection, Analysis & Plan

#### Selected Game: Breakout/Arkanoid

### Necessary Features
What are the core features that your game should have? These should be things that __must__ be implemented in order to make the game playable, not extra features that could be added to make the game more fun to play.

- __a paddle moved by the user to bounce the ball off__
- __a ball__
- __bricks that disappear when hit by the ball__
- __score counter__

### Extra Features
What are some features that are not essential to gameplay, but you would like to see (provided you have time after completing the necessary features.

- __Color for the ball/bricks/paddle__
- __moving bricks__ 
- __multiple balls__ 
- __power-ups__
- __option to speed up gameplay.__


### Controls
How will your game be controlled? If the mouse will be used, explain how. List all keyboard commands as well.

Keyboard Commands:
- __right and left keys for paddle movement__
- __space to reset__
- __'w' and 's' to speed up/slow down gameplay__


### Classes
What classes will you be creating for this project? Include the instance variables and methods that you believe you will need. You will be required to create at least 2 different classes. If you are going to use classes similar to those we've made for previous assingments, you will have to add new features to them.

__Paddle__
- Instance variables:
  - x,y, plength, pwidth
- METHODS
  - display (show paddle)
  - move (moves paddle)
  - hit (called when ball hits paddle)

__Ball__
- Instance variables:
  - cx, cy, xvelocity, yvelocity, radius
- METHODS
  - reset (put the ball back in its starting position)
  - display (show ball)
  - move (moves ball)
  - blockBounce (what the ball does when the ball hits a block)
  - paddleBounce (what the ball does when the ball hits the paddle)
  - onBall (find position of ball)
  
__Block__
- Instance variables:
  - cx, cy, blength, bwidth, color, alive
- METHODS
  - display (show individual block)
  - move (for moving blocks as an extra feature)
  - reset (display blocks in initial position)
  - destroy (called when ball hits block, removes instance of block)
  - score (keep track of how many blocks destroyed)

__Field__
- Instance Variables:
  - Block[][] grid 
  - numRows, numCols
- METHODS
  - showBlocks (display all blocks at once)

