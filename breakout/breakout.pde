int PADDLE_WIDTH = 150;
int PADDLE_HEIGHT = 25;
int BALL_SIZE = 10;
int rows = 9;
int columns = 3;
int BLOCK_SIZE = 100;
int score = 0;
int side = 0;
int numBlocks = rows * columns;
int lives = 4;
int curLevel = 0;
boolean increased2;
boolean increased3;
boolean isMenu;
boolean isDiff;
boolean curPlaying;
boolean isPlaying;
boolean isWon;
boolean isLost;
Paddle p;
Ball b1, b2, b3; 
Menu m;
Arena a, a3;

void setup() {
  increased2 = false;
  increased3 = false;
  isMenu = true;
  isDiff = false;
  isPlaying = false;
  isWon = false;
  isLost = false;
  curPlaying = false;
  frameRate(30);
  size(1000,700);
  p = new Paddle();
  b1 = new Ball();
  b2 = new Ball();
  b3 = new Ball();
  a = new Arena(rows, columns);
  a3 = new Arena(rows, columns, 5, 20);
}

void draw() {
  if(isMenu) {
    frameRate(20);
    background(#3CC1B9);
    textSize(100);
    fill(0);
    text("BREAKOUT", width/4+50, height/4+100);
    textSize(30);
    text("Click Anywhere to Play", width/4+120, height/2+120);
    m = new Menu(15);
  }
  else if(isDiff) {
    frameRate(30);
    background(0);
    textSize(75);
    text("CHOOSE YOUR DIFFICULTY", width/4 - 135, height/4+100);
    noStroke();
    rect(width/3 - 150, 2*height/3, 150,125);
    rect(1.5*width/3-50, 2*height/3, 150,125);
    rect(2*width/3 +50, 2*height/3, 150,125);
    fill(255);
    textSize(50);
    text("Easy", width/3 - 123, 2*height/3 + 150/2);
    textSize(42);
    text("Medium", 1.5*width/3 - 47, 2*height/3 + 150/2);
    textSize(50);
    text("Hard", 2*width/3 + 70, 2*height/3 + 150/2);
    fill(125,255,21,100);
  }
  else if(isWon) {
    frameRate(30);
    background(#3CC1B9);
    textSize(100);
    text("YOU WON", width/4+50, height/4+100);
    textSize(30);
    text("Click Anywhere to Play Again", width/4+70, height/2+120);
  }
  else if(isLost) {
    frameRate(30);
    background(#3CC1B9);
    textSize(100);
    text("YOU DIED", width/4+50, height/4+100);
    textSize(30);
    text("Click Anywhere to Play Again", width/4+70, height/2+120);
  }
  else if(isPlaying && curLevel == 1) {
    frameRate(30);
    background(#979896);
    p.display();
    p.move(mouseX - PADDLE_WIDTH/2);
    b1.display();
    b1.move();
    if(p.onPaddle(b1)) {
      b1.paddleBounce(b1);
    }
    a.checkBlock();
    fill(0);
    textSize(40);
    text("Score: " + score, 50, 50);
    text("Lives: " + lives, 800, 50);
    text("Level: Easy", 425, 50);
    if(numBlocks == 0) {
      isPlaying = false;
      isWon = true;
    }
  }
  else if(isPlaying && curLevel == 2) {
    frameRate(30);
    background(#979896);
    p.display();
    p.decreasePaddleWidth(120);
    p.move(mouseX - PADDLE_WIDTH/2);
    b2.display();
    b2.changeSpeed(13);
    b2.move();
    if(p.onPaddle(b2)) {
      b2.paddleBounce(b2);
    }
    if(increased2 == false) {
      a.blockHealth(2);
      increased2 = true;
    }
    a.checkBlock();
    fill(0);
    textSize(40);
    text("Score: " + score, 50, 50);
    text("Lives: " + lives, 800, 50);
    text("Level: Medium", 405, 50);
    if(numBlocks == 0) {
      isPlaying = false;
      isWon = true;
    }
  }
  else if(isPlaying && curLevel == 3) {
    frameRate(30);
    background(#979896);
    p.display();
    p.decreasePaddleWidth(80);
    p.move(mouseX - PADDLE_WIDTH/2);
    b3.display();
    b3.changeSpeed(15);
    b3.move();
    if(p.onPaddle(b3)) {
      b3.paddleBounce(b3);
    }
    if(increased3 == false) {
      a3.blockHealth(3);
      increased3 = true;
    }
    a3.checkBlock();
    fill(0);
    textSize(40);
    text("Score: " + score, 50, 50);
    text("Lives: " + lives, 800, 50);
    text("Level: Hard", 425, 50);
    if(numBlocks == 0) {
      isPlaying = false;
      isWon = true;
    }
  }
}

void keyPressed() {
  if(key == ' ' && curPlaying == false) {
    if(curLevel == 1) {
      b1.run();
    }
    else if(curLevel == 2) {
      b2.run();
    }
    else if(curLevel == 3) {
      b3.run();
    }
  }
}

void mousePressed() {
  if(mousePressed) {
    isMenu = false;
    if(isDiff == false && isPlaying != true) {
      isDiff = true;
    }
    else if (isDiff){
      if((mouseX > width/3 - 150 && mouseX < 1.5*width/3-50) && 
      (mouseY >2*height/3 && mouseY < 2*height/3 + 125)) {
        isPlaying = true;
        isDiff = false;
        curLevel = 1;
        lives = 5;
      }
      if((mouseX > 1.5*width/3-50 && mouseX < 2*width/3 +50) &&
      (mouseY >2*height/3 && mouseY < 2*height/3 + 125)) {
        isPlaying = true;
        isDiff = false;
        curLevel = 2;
        lives = 3;
      }
      if((mouseX > 2*width/3 +50 && mouseX < 2*width/3 +50 + 150)&&
      (mouseY >2*height/3 && mouseY < 2*height/3 + 125)){
        isPlaying = true;
        isDiff = false;
        curLevel = 3;
        lives = 1;
      }
    }
    if(isPlaying != true) {
      isLost = true;
    }
    if(isLost) {
      isLost = false;
    }
    if(isWon) {
      numBlocks = rows * columns;
      isWon = false;
      isDiff = true;
      a.reset();
      a3.reset();
      if(curLevel == 1) {
        b1.reset();
      }
      else if(curLevel == 2) {
        b2.reset();
      }
      else if(curLevel == 3) {
        b3.reset();
      }
      curPlaying = false;
    }
  }
}
