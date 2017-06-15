
//*****  LIBRERIES
import oscP5.*;
import netP5.*;
OscP5 oscP5;
//NetAddress myRemoteLocation; 
///*****

float xPos;
float yPos;
float zPos;

int r = 100;

float v_fader1;
float v_fader2;
float v_fader3;
float x1;

void setup() {
  size(800, 800, P3D);

  //////**** start oscP5, listening for incoming messages at port 8000 
  oscP5 = new OscP5(this, 1500);
  // myRemoteLocation = new NetAddress ("192.168.1.131", 7000);
  //myRemoteLocation = new NetAddress ("192.168.1.132", 8001);
}

//---------------------------------OSC EVENT-------------------------------------------

void oscEvent(OscMessage theOscMessage) {

  String addr = theOscMessage.addrPattern();
  float  val01  = theOscMessage.get(0).floatValue();
  float  val02  = theOscMessage.get(0).floatValue();
  float  val03  = theOscMessage.get(0).floatValue();

  if (addr.equals("/leapP5x")) { 
    v_fader1 = val01;
  } else if (addr.equals("/leapP5y")) { 
    v_fader2 = val02;
  } else if (addr.equals("/leapP5z")) { 
    v_fader3 = val03;
  }
  xPos =  v_fader1;

  yPos =  v_fader2;

  zPos =  v_fader3;
}


//---------------------------------OSC EVENT-------------------------------------------




void draw() {

  background(25);


  
  
  
  println("X > " + xPos);
  println("Y > " + yPos);
  println("Z > " + zPos);
  
  translate(width/2,height/2);
  pushMatrix();
  translate(xPos, yPos, zPos);
  box(100);
  popMatrix();
}