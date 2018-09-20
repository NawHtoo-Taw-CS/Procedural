//global variables go to the very top

float circleX = 365;
float circleY = 240;
int circleDir = 3;
float circleDirY = 5;
int player1Y;
int player2Y;

int scoreleft = 0;
int scoreright = 0;

void setup() {
  size(750, 500);
}

void draw() {
  background(0);
  textSize(25);
  text(scoreleft, width/10, height/10);
  text(scoreright, width*1/1.16, height/10);

  ellipse(circleX, circleY, width*1/25, width*1/25);
  rect(50,player1Y,10,50);
  
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
}
