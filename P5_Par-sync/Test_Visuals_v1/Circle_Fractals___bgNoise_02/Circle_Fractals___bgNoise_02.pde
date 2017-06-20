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
int n = 10;
boolean first = true;

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

float cgR = 0;
float cgG = 0;
float cgB = 0;


void setup() {
  size(800, 800);
  //fullScreen();
  angle = x2;
  speed = 0.01;
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
  ///---------------------------------------------------------
  pushStyle();
 // fill(0, 20);
 // rect(0, 0, width, height);
  popStyle();

  int e =0;
  for (int x = 0; x < width; x += 5) {
    
    for (int y = 0; y < height; y += 5) {
     
      if (e == int(noise(x * .001, y * .001, frameCount * 0.005) * 100) % 2) { //x4/100000     -     x2
        //set(x, y, color(255,255,0));
        
        //-----------
        noStroke();
        fill(0,200,150);
        ellipse(x, y, 3,3);
        //-------------
      }
    }
  }
  
///---------------------------------------------------------

  fill(0, 100); // 10+x1/10
  noStroke();
  rect(0, 0, width, height);

  
  translate(width/2, height/2);
  rotate(angle);

  l0 = map(x1, 0, x1, 50, 200);
  //l1 = map(x1, 0, x5/0.5, 37, 150);
  l1 = map(x1, 0, x5*10, 37, 150);
  l2 = map(mouseX+mouseY, 0, width+height, 25, 100);

  for (int i=0; i<n; i++) {
    fill(150, 100);
    pushMatrix();
    rotate(angle);
    rotate(i*radians(360)/n);
    translate(0, l0);
    ellipse(0, 0, 15, 15);


    for (int j=0; j<n; j++) {
      fill(200, 100);
      pushMatrix();
      rotate(-angle*3);
      rotate(j*radians(360)/n);
      translate(0, l1);
      ellipse(0, 0, 10, 10);

      for (int k=0; k<n; k++) {
        fill(250, 100);
        pushMatrix();
        rotate(-angle*5);
        rotate(k*radians(360)/n);
        translate(0, l2);    
        ellipse(0, 0, 5, 5);
        popMatrix();
      }
      popMatrix();
    }

    popMatrix();
  }
  angle = (angle+speed)%TWO_PI;
  println(x2);
  println(l0);
/*
  pushStyle();
  fill(0, 20);
  rect(0, 0, width, height);
  popStyle();

  int e =0;
  for (int x = 0; x < width; x += 5) {
    
    for (int y = 0; y < height; y += 5) {
     
      if (e == int(noise(x * .01, y * .01, frameCount * 1) * 100) % 10) { //x4/100000     -     x2
        set(x, y, color(150));
        //ellipse(x, y, 10,10);
      }
    }
  }
  */
}