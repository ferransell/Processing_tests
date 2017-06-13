Earth E;
Sun S;

void setup() {
  size(640, 360);

  E = new Earth();
  S = new Sun();
}

void draw() {

  background(0, 20, 20);



  PVector G = new PVector(0, 0.098);
  PVector gravity = S.attract(E);

  E.applyForce(gravity);
  E.update();

  //S.drag();
  //S.hover(mouseX, mouseY);

  S.display();
  E.display();
}

void mousePressed(){
  
 //S.clicked(mouseX,mouseY); 
  
  
}

void mouseReleased(){
  //S.stopDragging();
  
}