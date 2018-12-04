//global variables go to the very top

Ball ball1 = new Ball(500, 250,30, -5, -5);
Ball ball2 = new Ball(500, 250,30, 5, -5);
Ball ball3 = new Ball(500, 250,30, -5, 5);
Ball ball4 = new Ball(500, 250,30, 5, 5);


float player1Y = 240;
float player1X = 5;
float player2Y = 240;
float player2X = 985;

int scoreleft = 0;
int scoreright = 0;

int player1YMove;
int player2YMove;

boolean play=false;
boolean space = true;

void setup() {
  size(1000, 500);
  scoreleft = 0;
  scoreright = 0;
  player1Y = 180;
  player2Y = 180;
}

void draw() {
  background(0);
  textSize(25);
  text(scoreleft, width/10, height/10);
  text(scoreright, width*1/1.16, height/10);

  player1Y = player1Y + player1YMove;
  player2Y = player2Y + player2YMove;
  if (space) {
  textSize(50);
  fill(255);
  text("Press SPACE To Play",265,250);
  }
  
  rect(player1X, player1Y, 10, 200);
  rect(player2X, player2Y, 10, 200);
  if (play) {
  ball1.spawn();
  ball2.spawn();
  ball3.spawn();
  ball4.spawn();
  }
  if (player1Y<15) {
    player1Y=15;
  }
  if (player1Y>290) {
    player1Y=290;
  }
  if (player2Y<15) {
    player2Y=15;
  }
  if (player2Y>290) {
    player2Y=290;
  }

  

  if (scoreleft>9) {
    {
      endgame();
    };
  }
  if (scoreright>9) {
    {
      endgame2();
    };
  }
}
{
  keyPressed();
};

{
  keyReleased();
};
