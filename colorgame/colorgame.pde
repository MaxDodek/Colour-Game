//colorgame
//Max Dodek
//2..3
//Apr. 11, 2022

//add in:
//-all the fancy features (making it look nice)

//still will put variables here (this will be for all modes)
//global var.





//what still must complete
//1. tactile buttons
//2. improve the design - must I do?
//4. show score/ best score
//Mythias.otf
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


Minim minim;
AudioPlayer intro, point, mistake;


PFont myth,game;

//mode Variables
int mode; // This is similar way to how real video games that are more complex are made
final int INTRO =1; // final makes it so that these can't change anymore
final int GAME = 2;
final int PAUSE =3;
final int GAMEOVER = 4;
int randomWord= (int) random(0, 6);// make range
int randomColor= (int) random(0, 6);// make range




//game variables
int score, highscore;
int lives;
int timer, t;//t =time

//gameover variables
boolean win;

//intro gif
PImage[] gif; //aray of PImage, prob want other name if +1 gifs
int nframes; // to make number of frames
int f; //for frame





//colour pallette
color red=#FF0000;
color orange=#FF7F00;
color yellow=#FFFF00;
color green =#00FF00;
color purple=#6A0DAD;
color blue =#0000FF;
//--
color black=0;
color white=255;


String/*what this mean again*/ [] words ={"RED", "ORANGE", "YELLOW", "GREEN", "PURPLE", "BLUE"};
color [] colors ={red, orange, yellow, green, purple, blue};//in same order as string


//title
int x, vx;
int y,vy;

void setup() {
  size (1000, 800);
  mode = INTRO;
  //initializing variables, this setup for all modes
  //text
  textAlign(CENTER);
  textSize(100);
  myth = createFont("Mythias.otf", 100);//import font (search dafonts.com, download, data folder)
  game = createFont("SacredValley.ttf",100);
  //textFont(myth);

  //initialize game variables
  lives=5;
  score=0;
  highscore=0;
  t=100;
  timer=t;

  //initialize intro gif
  nframes=30;
  gif = new PImage [nframes];

  int i=0;
  while (i<nframes) {// **why ocasionally, - every maybe 10 times, it says 'out of bounds'
    gif[i] = loadImage ("frame_"+i+"_delay-0.03s.gif");

    i++;
  }
  //music
  minim = new Minim (this);
  intro = minim.loadFile("bounceback.mp3");
  point = minim.loadFile("SUCCESS.wav");
  mistake = minim.loadFile("FAILURE.wav");

//title
 x= width/2;
 y=y=400;
 vx=5;
 vy=5;

}


void draw () { // After draw, I can do void intro, void game, etc. instead of using tabs
  if (mode==INTRO) {
    intro();
  } else if (mode ==GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover ();
  } else {
    println("Mode error:"+ mode);
  }
}// these are seperate modes for different parts of game
