class Sun {

  PVector loc;
  PVector vel;
  PVector acc;
  
  float mass = 10;
  
  float G;

  Sun () {




    loc = new PVector (width/2, height/2);
    vel = new PVector (0, 0);
    acc = new PVector (0, 0);
  }
  
 PVector attract (Earth planets){
   
   // direction of the force
   PVector force = PVector.sub(loc,planets.loc);
   float d = force.mag();
   
   d = constrain(d,25,25);
   
   force.normalize();
   
  //magnitude of the force
  float str = (G + mass + planets.mass)/(d*d);
  
  //magnitude and direction together
  force.mult(str);
  
  return force;
 }
  
  void applyForce(PVector forces) {
    PVector f = PVector.div(forces,mass);
    acc.add(f);
  }

  void update() {

    PVector mouse = new PVector(mouseX, mouseY); //Gets mouse location

    mouse.sub(loc); //gets distance from object and mouse
    mouse.setMag(0.2);


   // acc = mouse;

    vel.add(acc);
    loc.add(vel);
    //vel.limit(5);
    
    acc.mult(0);
  }

  void display() {
    strokeWeight(2);
    stroke(100, 100, 0);
    noFill(); 

    ellipse(loc.x, loc.y, mass*20, mass*20);
  }

  
}