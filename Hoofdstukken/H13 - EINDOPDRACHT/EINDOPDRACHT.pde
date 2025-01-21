int ballX, ballY;
int ballSpeedX = 3, ballSpeedY = 3;
int ballSize = 20;

int leftPaddleY, rightPaddleY;
int paddleWidth = 20, paddleHeight = 100;
int paddleSpeed = 5;

int leftScore = 0, rightScore = 0;
boolean gameOver = false;

// Bal grootte, spel grid, bal en paddle groottes
void setup(){
  size(600,400);
  ballX = width/2;
  ballY = height/2;
  leftPaddleY = height/2 - paddleHeight/2;
  rightPaddleY = height/2 - paddleHeight/2;
}

// Bal snelheid, op en neer gaan, collision detection
void draw(){
  background(0);
  
  if(gameOver){
    gameOverScreen();
    return;
  }
  
  ballX += ballSpeedX;
  ballY += ballSpeedY;
  
  if(ballY <= 0 || ballY >= height-ballSize){
    ballSpeedY *= -1;
  }
  
  if(ballX <= paddleWidth && ballY >= leftPaddleY && ballY <= leftPaddleY + paddleHeight){
    ballSpeedX *= -1;
  }
  
  if(ballX >= width - paddleWidth - ballSize && ballY >= rightPaddleY && ballY <= rightPaddleY + paddleHeight){
    ballSpeedX*= -1;
    ballSpeedY = int(random(2,4)) * (random(1) > 0.5 ? 1 : -1);
  }
  
  if(ballX <= 0){
    rightScore++;
    checkWinner();
    resetBall();
  }
  
  if(ballX >= width){
    leftScore++;
    checkWinner();
    resetBall();
  }
  
  // tekenen van bal, paddles
  fill(255);
  noStroke();
  ellipse(ballX, ballY, ballSize, ballSize);
  
  fill(255,0,0);
  rect(0, leftPaddleY, paddleWidth, paddleHeight);
  
  fill(0,0,255);
  rect(width - paddleWidth, rightPaddleY, paddleWidth, paddleHeight);
  
  textSize(32);
  fill(255);
  textAlign(CENTER, TOP);
  text(leftScore, width/4, 20);
  text(rightScore, width*3/4, 20);
  
  movePaddles();
}

// Paddles Bewegen (controls)
void movePaddles(){
  if(keyPressed){
    if(key == 'w' || key == 'W'){
      leftPaddleY -= paddleSpeed;
    }
    if(key == 's' || key == 'S'){
      leftPaddleY += paddleSpeed;
    }
    
    if(keyCode == UP){
      rightPaddleY -= paddleSpeed;
    }
    if(keyCode == DOWN){
      rightPaddleY += paddleSpeed;
    }
  }
  
  leftPaddleY = constrain(leftPaddleY, 0, height-paddleHeight);
  rightPaddleY = constrain(rightPaddleY, 0, height-paddleHeight);
}

// Reset Bal eind Spel
void resetBall(){
  ballX = width/2;
  ballY = height/2;
  ballSpeedX *= -1;
  ballSpeedY = int(random(2,4)) * (random(1) > 0.5 ? 1 : -1);
}


// Check wie gewonnen heeft
void checkWinner(){
  if(leftScore == 5 || rightScore == 5){
    gameOver = true;
  }
}


// Game Over Scherm
void gameOverScreen(){
  fill(255);
  textSize(32);
  textAlign(CENTER, CENTER);
  if(leftScore == 5){
    text("Speler 1 wint!", width/2, height/2-40);
  }else if(rightScore == 5){
    text("Speler 2 wint!", width/2, height/2-40);
  }
  textSize(16);
  text("Druk op 'R' op opnieuw te starten", width/2, height/2+40);
}

// Restart Spel
void keyPressed(){
  if(gameOver && (key == 'r' || key == 'R')){
    resetGame();
  }
}

// Game Resetten
void resetGame(){
  leftScore = 0;
  rightScore = 0;
  ballX = width/2;
  ballY = height/2;
  ballSpeedX = 3;
  ballSpeedY = 3;
  leftPaddleY = height/2 - paddleHeight/2;
  rightPaddleY = height/2 - paddleHeight/2;
  gameOver = false;
}

/* ERRORS/BUGS DIE IK BEN TEGENGEKOMEN:

- Input Over-rides -
Als een speler constant zit te bewegen, en de andere speler een input geeft, stopt de eerste speler met bewegen.
Spelers over-riden inputs van elkaar.

- Collision / Hitboxes -
Hitboxes zijn niet correct, hitbox van de left Paddle (speler 1) is kleiner dan de vorm, terwijl de right Paddle (speler 2) een groter hitbox heeft.

- Bal loopt een beetje vast -
Bal stuitert heen en weer tegen een vand de Paddles aan. Komt waarschijnlijk door collision. */
