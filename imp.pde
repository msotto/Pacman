 import processing.sound.*;
SoundFile soundfile;
SoundFile music;//1 minute
Snake s;

int scl = 20;
int amount = 20;

PImage pman;
PVector food;

ArrayList <PVector> dots = new ArrayList<PVector>();

PVector tempFood;

void setup() {
  imageMode(CENTER);
  size(600, 600);

  s = new Snake();

  frameRate(10);

  pickLocation();

  pman = loadImage("pacm.svg.png");

  smooth();
  //Load a soundfile
  soundfile = new SoundFile(this, "pacman_chomp.wav"); //effect
  music = new SoundFile(this, "pacman_beginning.wav"); //music
  music.loop();

  //for (int i = 0; i < amount; i++) {

  // float xpos = random(0, width); //random value between 0 and width
  //float ypos = random(0, height);//idem. between 0 and height
  //  pickLocation();
  //}
}


void pickLocation() {

  int cols = width;

  int rows = height;

  //food = new PVector(floor(random(cols)), floor(random(rows)));

  //food.mult(scl);

  tempFood = new PVector(floor(random(0, cols)), floor(random(0, rows)));
  dots.add(tempFood);
}



void mousePressed() {
}


void draw() {

  background(51);

  for (PVector f : dots) {
    fill(255, 0, 100);
    rect(f.x, f.y, scl, scl);
  }  

  if (s.eat(tempFood)) {
    soundfile.play();
    pickLocation();
  }




  s.death();
  s.update();

  s.show(); //draw the pacman

  stroke(0);
  strokeWeight(5);
}






void keyPressed() {

  if (keyCode == UP) {
    s.dir(0, -1);
    s.flip(1);
  } else if (keyCode == DOWN) {
    s.dir(0, 1);
    s.flip(2);
  } else if (keyCode == RIGHT) {
    s.dir(1, 0);
    s.flip(3);
  } else if (keyCode == LEFT) {
    s.dir(-1, 0);
    s.flip(4);
  }
}