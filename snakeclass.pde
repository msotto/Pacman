
class Snake {

  float x = 0;

  float y = 0;

  float xspeed = 1;

  float yspeed = 0;

  int total = 0;

  ArrayList<PVector> tail = new ArrayList<PVector>();

 float r=-90;


  Snake() {
  }


  boolean eat(PVector food) {

    float d = dist(x, y, food.x, food.y);
   // println(d);
    if (d < 50) {
      total++;
      dots.remove(food);
      return true;
    } else {
      return false;
    }
  }


  void dir(float x, float y) {
    xspeed = x;
    yspeed = y;
  }


  void death() {

    for (int i = 0; i < tail.size(); i++) {

      PVector pos = tail.get(i);

      float d = dist(x, y, pos.x, pos.y);

      if (d < 1) {

        println("starting over");

        total = 0;

        tail.clear();
      }
    }
  }


  void update() {

    //println(total + " " + tail.size());

    if (total > 0) {

      if (total == tail.size() && !tail.isEmpty()) {

        tail.remove(0);
      }
    }


    x = x + xspeed*scl;

    y = y + yspeed*scl;


    x = constrain(x, 0, width-scl);

    y = constrain(y, 0, height-scl);
  }


  void show() {

    fill(255);

    // for (PVector v : tail) {
    //  rect(v.x, v.y, scl, scl);
    // }
    pushMatrix();
    // rect(x, y, scl, scl);
    translate(x,y);
    rotate(radians(r));
    image(pman, 0, 0, scl*2, scl*2);
    popMatrix();
  }
  
  void flip(int d){
    //println(d);
  if (d == 4){
    r = 180;
  } else 
  if (d == 3){
    r = 00;
  }
  if (d == 2){
    r = 90;
  }
  if (d == 1){
    r = 270;
  }
    println(r);
  }
}