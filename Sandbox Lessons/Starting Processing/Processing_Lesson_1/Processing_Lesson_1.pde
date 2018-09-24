//global variables go to the very top

float circleX = 365;
float circleY = 240;
int circleDir = 3;
float circleDirY = 5;
float player1Y = 240;
float player1X = 5;
float player2Y = 240;
float player2X = 735;

int scoreleft = 0;
int scoreright = 0;

int player1YMove;
int player2YMove;

void setup() {
  size(750, 500);
  scoreleft = 0;
  scoreright = 0;
  circleX = 365;
  circleY = 240;
  player1Y = 240;
  player2Y = 240;
}

void draw() {
  background(0);
  textSize(25);
  text(scoreleft, width/10, height/10);
  text(scoreright, width*1/1.16, height/10);

  player1Y = player1Y + player1YMove;
  player2Y = player2Y + player2YMove;

  ellipse(circleX, circleY, 30, 30);
  rect(player1X, player1Y, 10, 100);
  rect(player2X, player2Y, 10, 100);

  circleX=circleX+circleDir;
  circleY=circleY+circleDirY;

  if (player1Y<10) {
    player1Y=10;
  }
  if (player1Y>390) {
    player1Y=390;
  }
   if (player2Y<10) {
    player2Y=10;
  }
  if (player2Y>390) {
    player2Y=390;
  }

  if (circleX>width+25) {
    circleX=365;
    circleDir=-circleDir;
    scoreleft=scoreleft+1;
  } 
  if (circleX<-25) {
    circleX=365;
    circleDir=-circleDir;
    scoreright=scoreright+1;
  }
  if (circleY>height-20) {
    circleDirY=-circleDirY;
  }
  if (circleY<height-490) {
    circleDirY=-circleDirY;
  }

  if (circleY>player1Y && circleY<player1Y+100) {
    if (circleX<player1X+25) {
      circleDir=-circleDir;
    }
  }

  if (circleY>player2Y && circleY<player2Y+100) {
    if (circleX>player2X-15) {
      circleDir=-circleDir;
    }
  }

  if (scoreleft>4) {
    {
      endgame();
    };
  }
  if (scoreright>4) {
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
