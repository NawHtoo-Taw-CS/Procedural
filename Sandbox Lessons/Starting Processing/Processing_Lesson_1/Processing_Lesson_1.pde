//global variables go to the very top

int circleX = 240;
int circleDir = 1;
boolean right = true;


void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  ellipse(circleX, 240, 50, 50);
  circleX=circleX+circleDir;
  if (circleX>width-25 || circleX<25) {
    circleDir=-circleDir;
  }
}
