star neuerStern;
ArrayList<star> starArray = new ArrayList<star>();
float h2;//=height/2
float w2;//=width/2
float d2;//=diagonal/2
int numberOfStars = 20000;
int newStars =50;

void setup() {
  size(900, 900);
  w2=width/2;
  h2= height/2;
  d2 = dist(0, 0, w2, h2);
  noStroke();
  neuerStern= new star();
  frameRate(9000);
  background(0);
}
void draw() {
  fill(0, map(dist(mouseX, mouseY, w2, h2), 0, d2, 255, -10));
  rect(0, 0, width, height);
 
  neuerStern.render();
  for (int i = 0; i<newStars; i++) {   // star init
   fill(random(0,255),random(0,255),random(0,255));
    starArray.add(new star());
  }


  for (int i = 0; i<starArray.size(); i++) {
    if (starArray.get(i).x<0||starArray.get(i).x>width||starArray.get(i).y<0||starArray.get(i).y>height) starArray.remove(i);
    starArray.get(i).move();
    starArray.get(i).render();
  }
  if (starArray.size()>numberOfStars) {//
    for (int i = 0; i<newStars; i++) {
      starArray.remove(i);
    }
  }
}