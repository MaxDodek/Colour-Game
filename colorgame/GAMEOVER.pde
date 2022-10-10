void gameover() {
  background(red);

  textSize(100);
  text("Game Over", width/2, height/2-300);
  
  //score
   textSize(50);
  fill(black);
  text("Score:" + score, width/2, height/2-200);
//score
  textSize(50);
  fill(black);
  text("High Score:" + highscore, width/2, height/2-100);

  buttonText();
  text("Restart", width/2, height/2+100);
}
void gameoverClicks () {
  reset();
  nextMode(INTRO);
}
