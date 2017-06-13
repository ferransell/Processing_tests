Earth[] planets;
Venus V;

void setup() {
  size(640, 360);

  planets = new Earth[6];

  for (int i = 0; i < planets.length; i++) {
    planets[i] = new Earth();
  }
}

void draw() {

  background(0, 20, 20);

  for (Earth E : planets) {

    PVector G = new PVector(0, 0.098);
    G.mult(E.mass);
    E.applyForce(G);

    PVector wind = new PVector(0, 0);
    E.applyForce(wind);




    //------CLASS-------
    E.update();
    E.edges();
    E.display();
    //------CLASS-------
  }
}