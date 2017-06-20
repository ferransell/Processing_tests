//*****  LIBRERIES
import oscP5.*;
import netP5.*;
OscP5 oscP5;
NetAddress myRemoteLocation; 
///*****
float xPos1;
float yPos1;
float angle, speed;
float l0, l1, l2;
int n = 3;
boolean first = true;

float v_fader1;
float v_fader2;
float v_fader3;
float v_fader5;
float x1;
float x2;
float x3;
float x5;

PVector l0Pos;
PVector l1Pos;
PVector l2Pos;

PVector translate;



void setup() {
  size(800, 800);
  angle = x2;
  speed = 0.01;
  background(0);

  l0Pos = new PVector (0, 0);
  l1Pos = new PVector (0, 0);
  l2Pos = new PVector (0, 0);
  translate = new PVector (0, 0);

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
  } else if (addr.equals("/1/fader5")) {
    v_fader5 = val;
  }
  x1 =  v_fader1;
  x2 =  v_fader2;
  x3 =  v_fader3;
  x5 =  v_fader5;
}


//---------------------------------OSC EVENT-------------------------------------------



void draw() {  
  fill(0, 10+x1/10);
  noStroke();
  rect(0, 0, width, height);

  translate(width/2, height/2);
  rotate(angle);

  //----------------------------------------------



  //----------------------------------------------


  l0 = map(x1, 0, x1, 50, 200);
  l1 = map(x1, 0, width, 37, 150);
  l2 = map(mouseX+mouseY, 0, width+height, 25, 100);

  for (int i=0; i<n; i++) {
    fill(150, 100);
    pushMatrix();
    //rotate(angle);
    //rotate(i*radians(360)/n);
    translate(0, l0);
    l0Pos.x = sin(i);
    l0Pos.y = cos(i);
    ellipse(l0Pos.x, l0Pos.y, 15, 15);


    for (int j=0; j<n; j++) {
      fill(200, 100);
      pushMatrix();
      //rotate(-angle*3);
      //rotate(j*radians(360)/n);
      translate(0, l1);
      l1Pos.x = sin(j);
      l1Pos.y = cos(j);
      ellipse(l1Pos.x, l1Pos.y, 15, 15);
      for (int k=0; k<n; k++) {
        fill(250, 100);
        pushMatrix();
        //rotate(-angle*5);
        //rotate(k*radians(360)/n);
        translate(0, l2);    
        l2Pos.x = sin(k);
        l2Pos.y = cos(k);
        ellipse(l2Pos.x, l2Pos.y, 2, 2);
        popMatrix();
      }
      popMatrix();
    }

    popMatrix();
  }
  angle = (angle+speed)%TWO_PI;
  println(x2);
  println(l0Pos.x);
  println(l0Pos.y);
}