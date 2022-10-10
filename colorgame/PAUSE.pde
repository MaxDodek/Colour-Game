void pause () {
  background(orange);
  
  textSize(100);
  text("Game Paused", width/2, height/2-100);
  

  buttonText();
  text("Back", width/2, height/2+100);



}

void pauseClicks () {
  nextMode(GAME);
}
