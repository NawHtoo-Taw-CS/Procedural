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
}
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      player2YMove = -6;
    } else if (keyCode == DOWN) {
      player2YMove = +6;
    }
  }
  if (key == 'w' || key == 'W' ) {
    player1YMove = -6;
  }
  if (key == 's' || key == 'S' ) {
    player1YMove = +6;
  }
}
void keyReleased() {
  if (key == CODED) {
    if (keyCode == UP) {
      player2YMove = 0;
    } else if (keyCode == DOWN) {
      player2YMove = 0;
    }
  }
  if (key == 'w' || key == 'W') {
    player1YMove=0;
  }
  if (key == 's' || key == 'S' ) {
    player1YMove=0;
  }
}
