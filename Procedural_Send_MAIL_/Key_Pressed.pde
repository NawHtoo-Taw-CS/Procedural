void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      player2YMove = -10;
    } else if (keyCode == DOWN) {
      player2YMove = +10;
    }
  }
  if (key == 'w' || key == 'W' ) {
    player1YMove = -10;
  }
  if (key == 's' || key == 'S' ) {
    player1YMove = +10;
  }
   if (key == ' ') {
     play=true;
     space=false;
   }
}
