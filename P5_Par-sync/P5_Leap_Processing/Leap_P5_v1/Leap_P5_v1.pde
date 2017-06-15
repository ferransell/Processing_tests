
//*****  LIBRERIES
import oscP5.*;
import netP5.*;
OscP5 oscP5;
//NetAddress myRemoteLocation; 
///*****

float chooser = .5;

int r = 100;

float v_fader1;
float x1;

void setup() {
  size(800, 800);

  //////**** start oscP5, listening for incoming messages at port 8000 
  oscP5 = new OscP5(this, 1500);
// myRemoteLocation = new NetAddress ("192.168.1.131", 7000);
  //myRemoteLocation = new NetAddress ("192.168.1.132", 8001);
}

//---------------------------------OSC EVENT-------------------------------------------

void oscEvent(OscMessage theOscMessage) {

  String addr = theOscMessage.addrPattern();
  float  val  = theOscMessage.get(0).floatValue();

  if (addr.equals("/leapP5")) { 
    v_fader1 = val;
  }
  x1 =  v_fader1;
}


//---------------------------------OSC EVENT-------------------------------------------




void draw() {

  background(25);

  chooser = x1;

  if ( (chooser > 0.0) && (chooser < 1.0)) {

    noFill();
    stroke(255, 0, 0);
    strokeWeight(20);
    ellipse(width/2, height/2, r, r);

    println(chooser);
  } else if ((chooser > 1.0) && (chooser <2.0)) {
    noFill();
    stroke(255, 255, 0);
    strokeWeight(20);
    ellipse(width/2, height/2, r, r);

    println(chooser);
  } else if ((chooser > 2.0) && (chooser < 3.0)) {
    noFill();
    stroke(0, 255, 255);
    strokeWeight(20);
    ellipse(width/2, height/2, r, r);

    println(chooser);
  } else if ( chooser > 3.0) {
    noFill();
    stroke(0, 0, 255);
    strokeWeight(20);
    ellipse(width/2, height/2, r, r);

    println(chooser);
  }
}