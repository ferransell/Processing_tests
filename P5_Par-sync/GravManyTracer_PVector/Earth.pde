class Earth {

  PVector loc;
  PVector vel;
  PVector acc;
  
  float mass;

  Earth () {
    loc = new PVector (width/2,int(random(200,400)));
    vel = new PVector (1.5, 0);
    acc = new PVector (0, 0);
    
    mass = random(1,10);
  }
  
  void applyForce(PVector forces) {
    
    PVector f = PVector.div(forces,mass);
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

   ellipse(loc.x, loc.y, mass*2, mass*2);
  
  }

  
}