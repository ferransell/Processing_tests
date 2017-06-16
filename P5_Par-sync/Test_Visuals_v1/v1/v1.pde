//*****  LIBRERIES
import oscP5.*;
import netP5.*;
OscP5 oscP5;
NetAddress myRemoteLocation; 
///*****

color c1 = #F7F5ED;
color c2 = #D74646;
float count = 19;
float r = 100;
float d = 8.25;
float MAX = 50;

float v_fader1;
float v_fader2;
float x1;
float x2;
float transparency;

void setup() {
  size(800, 800);
  smooth();
  frameRate(50);
  background(c1);
  ellipseMode(RADIUS);
  noStroke();

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
  }
  x1 =  v_fader1;
  x2 =  v_fader2;
}


//---------------------------------OSC EVENT-------------------------------------------


void draw() {

  fill(c1, 100);
  rect(0, 0, width, height);
  r = x1;

  MAX = x2;
  transparency = x2;
  fill(c2, transparency);



  println("r > " + r);
  println("count > " + count);
  pushMatrix();
  translate(width / 2, height / 2);
  for (int n = 1; n < count; n++) {
    for (float a = 0; a <= 360; a += 1) {
      float progress = constrain(map(frameCount%MAX, 0+n*d, MAX+(n-count)*d, 0, 1), 0, 1);
      float ease = -0.5*(cos(progress * PI) - 1);
      float phase = 0 + 2*PI*ease + PI + radians(map(frameCount%MAX, 0, MAX, 0, 360));
      float x = map(a, 0, 360, -r, r);
      float y = r * sqrt(1 - pow(x/r, 2)) * sin(radians(a) + phase);
      ellipse(x, y, .5, .5);
    }
  }

  


  popMatrix();
}