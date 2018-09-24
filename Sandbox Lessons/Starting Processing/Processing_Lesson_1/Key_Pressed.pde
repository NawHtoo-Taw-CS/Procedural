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
  if (key == 'R' || key == 'r') {
     {setup();};
   }
}
