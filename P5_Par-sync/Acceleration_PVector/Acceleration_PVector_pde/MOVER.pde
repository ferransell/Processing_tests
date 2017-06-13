class Mover {

  PVector loc;
  PVector vel;
  PVector acc;

  Mover () {
    loc = new PVector (width/2, height/2);
    vel = new PVector (0, 0);
    acc = new PVector (0, 0);
  }

  void update() {
    acc = PVector.random2D();
    
    vel.add(acc);
    loc.add(vel);
    vel.limit(5);
  }

  void edges() {
    if (loc.x > width) loc.x=0;
    if (loc.x < 0) loc.x = width;

    if (loc.y > height) loc.y=0;
    if (loc.y < 0) loc.y = height;
  }

  void display() {
    strokeWeight(2);
    stroke(0, 70, 100);
    noFill(); 

    ellipse(loc.x, loc.y, 20, 20);
  }
}