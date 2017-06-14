ArrayList<particle> particles = new ArrayList();

void setup()
{
  // setup() runs once
  size(840, 480);
  smooth();
  
  xOrigin = width/2;
  yOrigin = height / 2;
 
  for(int i = 0; i < 480; i+=17)
  {
     for(int j = 0; j < 480; j += 17)
     {
       particle np=new particle(i,i,0, j);
       particles.add( np );
     }
  }
  background(0);
}


void draw(){
  background(0);
  stroke(255);
  
  /* old loop 
  for(int i = 0; i < particles.size(); i++)
  {
    particle cp = particles.get(i);
    cp.draw(t);
  }
  */
  
  for(particle p : particles)
  {
    p.draw(t);
  }
  
  t += 4;
}

float isoX(float x, float y, float z)
{ 
  float xCart = ( x - z ) * cos(0.46365); 
  float xI = xCart + xOrigin; 
  return xI; 
}

float isoY(float x, float y, float z) 
{ 
  float yCart = y + ( x + z) * sin(0.46365); 
  float yI = 0-yCart + yOrigin; 
  return yI; 
}