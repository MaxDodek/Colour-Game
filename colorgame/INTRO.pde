

void intro () {

  intro.play();

  background(green);

  image(gif[f], 0, 0, width, height);// f stand for page number
  f=f+1;//frame count, I believe
  //modulus, speeding up frame count/slowing down
  if (frameCount % 5 == 0) f=f=f+1; //slow down, doing it every other frame
  if (f>=nframes) f=0; //resetting gif, so continues looping//make>=, incase goes over



  fill(black);


  title();

  buttonText();
  text("Start Game", width/2, height/2+100);

}

void introClicks () {
  nextMode(GAME);
}

void title() {//why this won't work???
  //int counter=0;//fix
  //counter++;

  //if (counter < 50) {
  //  fill(black);
  //  text("Colour Game", width/2, height/2-100);
  //}


  //if (counter > 50) {
  //  fill(red); // - take away to make this blink
  //  text("Colour Game", width/2, height/2-100);
  //}

  //if (counter == 100) {
  //  counter = 0;
  //}

  textSize(300);
  textFont(myth);
  text("Colour Game", x, y);




  x=x+vx;//just this makes bounce left+right
  y=y+vy;//just this makes bounce left+right
  //together, they bounce all over, sort of randomly
  //vx and vy, are set to same, can make  the boucning pattern a lot more random (in void setup)
  if (x>750) {
    vx=-5;
  }
  if (x<200) {
    vx=5;
  }

  if (y>750) {
    vy=-5;
  }
  if (y<75) {
    vy=5;
  }
}
