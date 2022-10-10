void mouseReleased() {
  
   if (mode==INTRO) {
    introClicks();
  } else if (mode ==GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  }
}


void keyPressed() {
  if (mode==GAME) {
    if (randomWord== randomColor) {
      if (keyCode == LEFT) { //match
        points();
      }
      if (keyCode ==RIGHT) { //not match
        mistake();
      }
    } else {
      if (keyCode ==RIGHT) { //not match
        points();
      }
      if (keyCode == LEFT) { //match
        mistake();
      }
    }
  }
}
