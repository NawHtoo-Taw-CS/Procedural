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
