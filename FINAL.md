

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

- There are lives and a life counter
- There is a score and a score counter
- The ball bounces off the paddle at a different angle based on exactly where on the paddle it hits
- The ball bounces off the block differently based on whether it hits the top, bottom, left and right
- The ball bounces off the wall at a 90 degree angle every time
- There is a menu that welcomes you to the game
- In the menu, there is an animation of balls moving for visual effect
- There is a screen where you can choose your difficulty
- There are 3 levels of difficulty (easy, medium, hard)
  - Easy: Low ball speed, 5 lives, larger paddle surface
  - Medium: Ball is a little bit faster, 3 lives, smaller paddle surface
  - Hard: The ball is fast, 1 life, very small paddle surface
- There is a screen if you won
- There is a screen if you lost
- Multiple blocks can be destroyed if a ball hits 2 or more blocks at once
- Blocks have more health based on the level of difficulty
- Paddle is smaller based on the level of difficulty
- Block changes color as its health decreases (from bright to dull)

---

### Changes
What changed about your game after the design phase? Separate changes that occurred after the feedback round and changes that occurred during programming.

- During Programming
  - we added a menu and a menu class to control it
  - we allowed the user to change their difficulty
  - we added easy, medium, and hard mode
  - we changed the color of the block and balls
  - we added a win and lose screen
  - we changed the way the ball bounced off the block
  - we changed the way the ball bounced off the paddle
  - we added a score counter to the screen
  - we changed the outline of the blocks, ball, and paddle to light blue
  - we added animation and a welcome screen
  - we changed the layout of the blocks to center the blocks 
  - we added margins between blocks
  - we displayed the score, level, and lives on the top of the screen 
  - we allowed the user to switch between "slides" (ex. menu to difficulty screen) by clicking using mousePressed()
- After Feedback Round
  - we added lives and a life counter to the screen
  - we changed the paddle movement to be controlled by the mouse instead of the keyboard
  - we made the spacebar the "begin" command
  - we added block health with the color of the block changing as it got hit more
  - we added a 2d array that creates multiple rows of blocks 
  - we changed the size of the paddle as the difficulty increased
  - we created a way to stop the game if the user destroyed all of the blocks
  - we changed the color of the ball and bricks to a lime green color
  - we changed the color of the background when the game is playing to grey
