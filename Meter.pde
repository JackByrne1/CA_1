class Meter
{
  float x,y;
  float speed;
  float size;
  
  Meter(float x, float y)
  {
    this.x = x;
    this.y = y;
    size = random(10,130);
    speed = random(-15,15);
  }
  
  void render()
  {
    strokeWeight(1);
    stroke(192, 198, 17);
    fill(192, 198, 17);
    rect(x,y,10,size);
  }
  void update()
  {
    size = size + speed;
    if(size > 130)
    {
      size = random(10,130);
    }
     if(size < 5)
    {
      size = random(10,130);
    }
  }
}