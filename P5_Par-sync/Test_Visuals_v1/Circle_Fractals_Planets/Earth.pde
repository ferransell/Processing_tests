class Earth {

  PVector loc;
  PVector vel;
  PVector acc;

  float mass;

  float x, y;

  //arrayList_Trace
  ArrayList<PVector> history;

  Earth (float x, float y) {

    loc = new PVector (int(random(100, width-100)), int(random(100,height-100)));
    vel = new PVector (random(0,1),random(0,1));
    acc = new PVector (0, 0);

    this.x = x;
    this.y = y;

    mass = random(1, 10);
    
    this.history = new ArrayList<PVector>();
  }

  void applyForce(PVector forces) {

    PVector f = PVector.div(forces, mass);
    acc.add(f);
  }

  void update() {

    // PVector mouse = new PVector(mouseX, mouseY); //Gets mouse location

    //mouse.sub(loc); //gets distance from object and mouse
    //mouse.setMag(0.2);


    // acc = mouse;

    vel.add(acc);
    loc.add(vel);
    //vel.limit(5);

    acc.mult(0);

    //array_Setup
    this.x = loc.x;
    this.y = loc.y;

    PVector v = new PVector(this.x, this.y);
    this.history.add(v);
    if (this.history.size() > 50) {
      this.history.remove(0);
    }
  }

  void edges() {
    if (loc.x > width) loc.x=0;
    if (loc.x < 0) loc.x = width;

    if (loc.y > height) loc.y=0;
    if (loc.y < 0) loc.y = height;
  }

  void display() {
    //strokeWeight(2);
    //stroke(0, 70, 100);
    //fill(79,137,168);

    ellipse(loc.x, loc.y, mass*2, mass*2);
    
    //TRACE PATH
    
    beginShape();
    float r =random(10,30);
    for (PVector trace : history){
      //blendMode(DIFFERENCE);
     noFill();
     strokeWeight(.5);
     stroke(100, 170, 200);
     
     vertex(trace.x, trace.y);
     
    // ellipse(trace.x,trace.y,r,r);
    }
    endShape();
  }
}