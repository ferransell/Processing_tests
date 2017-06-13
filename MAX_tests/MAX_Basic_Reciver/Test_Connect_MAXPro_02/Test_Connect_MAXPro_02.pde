import oscP5.*;
import netP5.*;

OscP5 oscReciver;

float rad;
float Color;

float rot;

void setup() {

  size(800, 800, P3D);

  frameRate(60);
  oscReciver = new OscP5(this, 9999);
  smooth();
}

void oscEvent(OscMessage msg) {

  if (msg.checkAddrPattern("/Exe")==true) { //Checks if the correct message

    float amp = msg.get(0).floatValue(); // Takes first value from message
    float amp2 = msg.get(1).floatValue(); // takes segcond value from message



    println("amp ="+amp);
    println("amp2 ="+amp2);



    rad = amp;
    //Color = amp2;
  rot = amp ;
  }
  
 
  
  
}

void draw() {
  background(25);
  noFill();
  stroke(255);
  text("rad is =" + rad, 50, 50);
  text("rot is =" + rot, 50, 100);

  stroke(Color, 100, 150);



  /*
  fill(Color, Color*2, Color/2, 20);
   stroke(255);
   strokeWeight(10);
   ellipse(height/2, width/2, rad, rad);
  
  rot=rot+0.005;
 */
  pushMatrix();
  stroke(Color, 100, 150);

  translate(width/2, height/2);
  rotateX(rot);
  rotateZ(rot);
  box(rad);


  popMatrix();
}