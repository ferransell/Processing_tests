Earth E;
Venus V;

void setup() {
  size(640, 360);

  E = new Earth();
}

void draw() {

  background(0, 20, 20);



  PVector G = new PVector(0, 0.098);
  G.mult(E.mass);
  E.applyForce(G);

  //  PVector wind = new PVector(0, 0);
  //E.applyForce(wind);
if(mousePressed){
  PVector friction = E.vel.get();
  friction.normalize();
  

  float c = -.5;
  friction.mult(c);
  E.applyForce(friction);
}
  
  //------CLASS-------
  E.update();
  E.edges();
  E.display();
  //------CLASS-------
}