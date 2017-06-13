import netP5.*;
import oscP5.*;

OscP5 fSell;
NetAddress myRemote;

float rad = 0.0;
float rot = 0.0;

void setup() {
  size(600, 600, P3D);
  surface.setResizable(true);

  smooth();

  // ---- OSC ---- //
  
  fSell = new OscP5 (this, 9999);
  myRemote = new NetAddress("127.0.0.1" , 9991);
  
  fSell.plug (this, "setRad", "/Exe");
  
  // ---- OSC ---- //
  
  
}
 
void setRad(float amp) {

  rad = amp * 50.0;
}

/*
public void oscEvent(OscMessage msg){
  
  if (msg.checkAddrPattern("/Exe") && msg.checkTypetag("f")){
    
    rad = msg.get(0).floatValue();
    text("Data Recived of =" + rad, 50, 50);
    
    
  }
  
}
*/




void draw() {

  background(50);

  /*
  rot = rot + 0.005;
   
   
   noFill();
   translate(width/2, height/2);
   rotateX(rot);
   rotateZ(rot*1.5);
   box(rad);
   */

  ellipse(width/2, height/2, rad, rad);

  text("rad =" + rad, 50, 50);
}