class Ball {
  private int Radius;
  private int X;
  private int Y;

  public int Xm; // X Move
  public int Ym; // Y Move

  public Ball(int x, int y, int radius, int xm, int ym) {
    this.X = x;
    this.Y = y;
    this.Radius = radius;
    this.Xm = xm;
    this.Ym = ym;
  }

  public float getX() {
    return X;
  }
  public float getY() {
    return Y;
  }
  public float getRadius() {
    return Radius;
  }

  void Bounce(boolean Horizontal) {
    if (Horizontal) {
      Xm = Xm*-1;
    } else {
      Ym = Ym*-1;
    }
  }
  void reset() {
    X = 500;
    Y = 250;
    Xm = 5;
    Ym -= 5;
    Bounce(true);
    
  }
  void reset2() {
    X = 500;
    Y = 250;
    Xm = 5;
    Ym -= 5;
    Bounce(true);
    
  }
  void reset3() {
    X = 500;
    Y = 250;
    Xm -= 5;
    Ym = 5;
    Bounce(true);
    
  }
  void reset4() {
    X = 500;
    Y = 250;
    Xm = 5;
    Ym = 5;
    Bounce(true);
    
  }
  void stop() {
  Xm=0;
  Ym=0;
  }
  
  void spawn() {
    X = X + Xm;
    Y = Y + Ym;
    if (X<20+Radius && Xm<0) {
      if (player1Y<Y+Radius && player1Y+200>Y-Radius) {
        Bounce(true);
        Xm = Xm+1;
        Ym = Ym+1;
        Y=Y+1;
      }
    } else if (X>985-Radius && Xm>0) {
      if (player2Y<Y+Radius && player2Y+200>Y-Radius) {
        Bounce(true);
        Y=Y+1;
      }
    }
    if (Y<0+Radius) {
      if (Ym < 0) {
        Bounce(false);
      }
    } else if (Y>500-Radius) {
      if (Ym > 0) {
        Bounce(false);
      }
    }
    if (ball1.getX()>width){
      ball1.reset();
      scoreleft=scoreleft+1;
    }
    if (ball2.getX()>width){
      ball2.reset();
      scoreleft=scoreleft+1;
    }
    if (ball3.getX()>width){
      ball3.reset();
      scoreleft=scoreleft+1;
    }
    if (ball4.getX()>width){
      ball4.reset();
      scoreleft=scoreleft+1;
    }
    if (ball1.getX()<0){
      ball1.reset();
      scoreright=scoreright+1;
    }
    if (ball2.getX()<0){
      ball2.reset2();
      scoreright=scoreright+1;
    }
    if (ball3.getX()<0){
      ball3.reset3();
      scoreright=scoreright+1;
    }
    if (ball4.getX()<0){
      ball4.reset4();
      scoreright=scoreright+1;
    }

    fill(255);
    ellipse(X, Y, 30, 30);
  }
}
