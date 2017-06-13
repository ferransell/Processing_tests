Earth[] planets = new Earth[8];
;
Sun S;

void setup() {
  //size(800, 800);
  fullScreen();
  smooth();
  for (int i = 0; i < planets.length; i++) {

    planets[i] = new Earth();
  }
  S = new Sun();
}

void draw() {
  
 

  background(0, 20, 20);



 


  S.display();

  for (int i = 0; i< planets.length; i++) {

    PVector gravity = S.attract(planets[i]);
    planets[i].applyForce(gravity);
    planets[i].update();

    //S.drag();
    //S.hover(mouseX, mouseY);


    planets[i].display();
  }
}

void mousePressed() {

  //S.clicked(mouseX,mouseY);
}

void mouseReleased() {
  //S.stopDragging();
}