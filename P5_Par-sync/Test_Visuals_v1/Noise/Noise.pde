// Nervous Waves
// Levente Sandor, 2014


//*****  LIBRERIES
import oscP5.*;
import netP5.*;
OscP5 oscP5;
NetAddress myRemoteLocation; 
///*****

float v_fader1;
float v_fader2;
float v_fader3;
float v_fader4;
float v_fader5;
float x1;
float x2;
float x3;
float x4;
float x5;



void setup() {
  //size(500, 500);
  fullScreen();
  frameRate(60
  
  );
  background(0);
  
  //////**** start oscP5, listening for incoming messages
  oscP5 = new OscP5(this, 3090);
  //myRemoteLocation = new NetAddress ("192.168.1.131", 7000);
  
}

//---------------------------------OSC EVENT-------------------------------------------

void oscEvent(OscMessage theOscMessage) {

  String addr = theOscMessage.addrPattern();
  float  val  = theOscMessage.get(0).floatValue();

  if (addr.equals("/1/fader1")) { 
    v_fader1 = val;
  } else if (addr.equals("/1/fader2")) { 
    v_fader2 = val;
  } else if (addr.equals("/1/fader3")) {
    v_fader3 = val;
  } else if (addr.equals("/1/fader4")) {
    v_fader4 = val;
  } else if (addr.equals("/1/fader5")) {
    v_fader5 = val;
  }
  x1 =  v_fader1;
  x2 =  v_fader2;
  x3 =  v_fader3;
  x4 =  v_fader4;
  x5 =  v_fader5;
}


//---------------------------------OSC EVENT-------------------------------------------


void draw() {
  
  pushStyle();
  fill(0,20);
  rect(0,0,width, height);
  popStyle();
  int e =0;
  for (int x = 0; x < width; x += 5) {
    for (int y = 0; y < height; y += 5) {
      
      if (e == int(noise(x * .01, y * .01, frameCount * x4/100000) * x2) % 10) {
        set(x, y, color(255));
                //ellipse(x, y, 10,10);
      }
    }
  }
}