//global variables go to the very top

float circleX = 365;
float circleY = 240;
float circleDia = 30;
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
  circleDia=0;
  circleDia=30;
  size(750, 500);
  scoreleft = 0;
  scoreright = 0;
  circleX = 365;
  circleY = 240;
  player1Y = 240;
  player2Y = 240;
  circleDir = 5;
  circleDirY = 5;
}

void draw() {
  background(0);
  textSize(25);
  text(scoreleft, width/10, height/10);
  text(scoreright, width*1/1.16, height/10);

  player1Y = player1Y + player1YMove;
  player2Y = player2Y + player2YMove;

  ellipse(circleX, circleY, circleDia, circleDia);
  rect(player1X, player1Y, 10, 200);
  rect(player2X, player2Y, 10, 200);

  circleX=circleX+circleDir;
  circleY=circleY+circleDirY;

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

  if (circleX>width+25) {
    circleDir=3;
    circleDirY=5;
    circleX=365;
    circleDir=-circleDir;
    scoreleft=scoreleft+1;
  } 
  if (circleX<-25) {
    circleDir=3;
    circleDirY=5;
    circleX=365;
    circleDir=+circleDir;
    scoreright=scoreright+1;
  }
  if (circleY>height-20) {
    circleDirY=-circleDirY;
  }
  if (circleY<height-490) {
    circleDirY=-circleDirY;
  }

  if (circleY>player1Y && circleY<player1Y+200) {
    if (circleX<player1X+25) {
      circleDir=-circleDir;
      circleDir=circleDir+2;
    }
  }

  if (circleY>player2Y && circleY<player2Y+200) {
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
