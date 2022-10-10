
void tactile(float x, float y, float w, float h) {
  if (mouseX > x && mouseX< x + w && mouseY> y && mouseY<y+h) {
    stroke (black);
    strokeWeight(1);
  } else {
    stroke(white);
    strokeWeight(10);
  }
}


boolean touchrect(int x, int y, int w, int h) {
  if (mouseX>x && mouseX< x+w && mouseY>y && mouseY<y+h) {
    return true;
  } else {
    return false;
  }
}






void buttonText(/*int */) {//how make this function???, include variable n, for what text
  tactile(width/2-200, 400, 400, 150);
  fill(black);
  rect(width/2-200, 400, 400, 150);
  textSize(75);
  fill(white);
  //String s= n;
  //text(s, width/2, height/2+100);// why won't work???
}


void nextMode(int x) {
  if (mouseX > width/2-200 && mouseX< width/2+200 && mouseY> 400 && mouseY<650) {
    mode=x;
  }
}

void reset() {
  lives=5;
  score=0;
  timer=t;
  intro.rewind();
  x=width/2;
  y=width/2;
}
