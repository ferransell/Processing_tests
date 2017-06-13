float bgC = 20;


void setup() {
  size(500, 300);
}

void draw() {

  background(0, bgC, bgC); 

  strokeWeight(2);
  stroke(0, 68, 100);
  noFill();



  //-----------FORM-------------

  translate(width/2, height/2);
  ellipse(0, 0, 4, 4);





  //--------FORM_end------------

  //-------VECTOR
  PVector mouse = new PVector(mouseX, mouseY);
  PVector center = new PVector(width/2, height/2);

  mouse.sub(center); // Get vector lenght
  mouse.mult(0.5); // Multiply it by a factor [this doesn't works if the top operation is not done, since you don't have the vector loc and vel]

  line(0, 0, mouse.x, mouse.y);
  //-------VECTOR
}