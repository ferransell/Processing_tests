Mover m;

void setup() {
  size(640, 360);

  m = new Mover();
}

void draw() {

  background(0, 20, 20);

  PVector G = new PVector(0, 0.01);
  m.applyForce(G);

  PVector wind = new PVector(0.01, 0);
  m.applyForce(wind);
  
  


  //------CLASS-------
  m.update();
  m.edges();
  m.display();
  //------CLASS-------
}