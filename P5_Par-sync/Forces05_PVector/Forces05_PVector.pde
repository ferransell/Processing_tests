Earth E;
Venus V;

void setup() {
  size(640, 360);

  E = new Earth();
  V = new Venus();
}

void draw() {

  background(0, 20, 20);



  PVector G = new PVector(0, 0.098);
  PVector force = S.attract(m);
  G.mult(E.mass);
  E.applyForce(G);

  //  PVector wind = new PVector(0, 0);
  //E.applyForce(wind);



  //------CLASS-------
  E.update();
  E.edges();
  E.display();
  //------CLASS-------
}