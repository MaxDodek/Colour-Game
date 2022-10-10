int randomMatching;

void game () {
  textFont(game);
  
  intro.pause();
  timer--;
  //left side- match
  background(black);

  fill(white);
  text ("Match", width/4, height/4);

  //right side - non match
  fill(white);
  stroke(white);
  strokeWeight(5);
  rect(width/2, 0, width, height);

  fill(black);
  text ("Not", 750, 200);
  text ("Match", 750, 300);

  //set up - random - part for game
  fill(colors [randomColor]);
  text(words [randomWord], width/2, height/2);



  //score board
  textSize(25);
  fill(black);
  text("Score: "+ score, 800, 50);
  text("Lives: "+ lives, 800, 100);

  textSize(100);//resetting back the textsize

  //pause
  tactile(100, 50, 100, 50);
  fill(white);
  rect(100, 50, 100, 50);
  textSize(25);
  fill(black);
  text("Pause", 150, 75);
  textSize(100);//reset



  //time limit
  if (timer ==0) {
    mistake();
  }

  //Die
  if (lives<=0)mode=GAMEOVER;
}



void gameClicks () {

  //pause game
  if (mouseX > 100 && mouseX< 200 && mouseY> 50 && mouseY<100) {
    mode=PAUSE;
  }


  //generate puzzle

  //see was my guess correct - 4 options
  //check answers

  if (randomWord== randomColor) {
    //correct - clicked
    if (touchrect(0, 0, width/2, height)) {//match
      points();
    }

    //incorrect, clicked
    if (touchrect(width/2, 0, width, height)) {//not match
      mistake();
    }

    //incorr  - not clicked
  } else { //not match
    if (touchrect(width/2, 0, width, height)) {//not match
      points();
    }

    if (touchrect(0, 0, width/2, height)) {//match
      mistake();
    }
  }


  //pause

//end game sco
}






void random() {
  randomWord= (int) random(0, 6);// make range
  randomColor= (int) random(0, 6);// make range

  float randomMatching= (int) random(0, 2);// to test make it a set number so always mathching
  if (randomMatching==0) {//make matching
    randomWord=randomColor;
  } else {
    //make while loop keep randomizing word as and colour as long as equal
    while (randomWord==randomColor) {//make not match
      randomWord= (int) random(0, 6);// make range
      randomColor= (int) random(0, 6);// make range
    }
  }
}


void points() {
  point.rewind();
  point.play();
  score++;
  timer=t;
  random();
  
   if (score>highscore) {
      highscore=score;
    }
}

void mistake() {
  mistake.rewind();
  mistake.play();
  lives--;
  timer=t;
  random();
}

void time() {
  if (score>10) t=75;
  if (score>15) t= 50;
}
