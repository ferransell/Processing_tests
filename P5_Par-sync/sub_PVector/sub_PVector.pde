float bgC = 20;



void setup() {
  size(500, 300);
}

void draw() {

  background(0, bgC, bgC); 

  strokeWeight(2);
  stroke(0, 68, 100);
  noFill();

  //-------VECTOR
  PVector mouse = new PVector(mouseX, mouseY);
  PVector center = new PVector(width/2, height/2);

  mouse.sub(center);
  //-------VECTOR

  //-----------FORM-------------
  pushMatrix();
  translate(width/2, height/2);
  ellipse(0, 0, 4, 4);
  
  line(0,0, mouse.x, mouse.y);
  popMatrix();
  //--------FORM_end------------

 
}