class star {
  float x, y, speed, d, age, sizeIncr;
  int grow;
  star() {
    x = random(width);
    y = random(height);
    speed = random(0.2, 5);
    grow= int(random(0, 2));
    if (grow==1)d = 0;
    else {
      d= random(0.2, 3);
    }
    age=0;
    sizeIncr= random(0, 0.03);
  }
  
  void render() {
    //determins death time
    age++;
    if (age<200) {
      if (grow==1) {
        d+=sizeIncr;
        if (d>3||d<-3) d=3;
      } else {
        if (d>3||d<-3) d=3;
        d= d+0.2-0.6*noise(x, y, frameCount);
      }
    } else {
      if (d>3||d<-3) d=3;
    }

//creates object
    ellipse(x, y, d*(map(noise(x, y, 0.001*frameCount), 0, 1, 0.2, 1.5)), d*(map(noise(x, y, 0.001*frameCount), 0, 1, 0.2, 1.5)));
  }
  
  void move() {
    
    
    //sets movement depending on mouse position
    x =x-map(mouseX, 0, width, -0.05*speed, 0.05*speed)*(w2-x); 
    y =y-map(mouseY, 0, height, -0.05*speed, 0.05*speed)*(h2-y);
  }
}