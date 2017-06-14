class particle
{
  private PVector po;
  private float idx;
  public particle(int id, float x, float y, float z)
  {
    po = new PVector(x,y,z);
    idx = id;
  }

  public void draw(float t)
  {
        float noiz = noise((po.x+t)/300, po.z/300, po.y/250)*250;
        
        float dx = isoX(po.x, po.y + noiz, po.z);
        float dy = isoY(po.x, po.y + noiz, po.z);
        
        float subZ= max(0.5,10-((po.z+po.x)/100));
        
        stroke(100+(subZ*14));
        fill(100+(subZ*14));
        
        ellipse(dx, dy+height *0.7, subZ, subZ);
   }
}



float xOrigin=0;
float yOrigin=0;
float t=0;