//global variables go to the very top

int circleX = 240;
int circleY = 240;
int circleDir = 3;

boolean right = true;

int scoreleft = 0;
int scoreright = 0;

void setup() {
  size(500, 500);
}

void draw() {
  fill(255);
  
  background(0);
  textSize(25);
  text(scoreleft,width/10,height/10);
  text(scoreright,width*1/1.16,height/10);
  
  ellipse(circleX, circleY, width*1/12, width*1/12);
  circleX=circleX+circleDir;
  if (circleX>width+10) {
    circleX=240;
    circleDir=-circleDir;
    scoreleft=scoreleft+1;
    
  } 
  if (circleX<-10){
    circleX=240;
    circleDir=-circleDir;
    scoreright=scoreright+1;
  } 
  
}
