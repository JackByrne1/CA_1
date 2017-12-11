class Bullet
{
  float x,y;
  
  Bullet(float x, float y)
  {
    this.x = x;
    this.y = y;
  }
  
  void render()
  {
    stroke(255,0,0);
    ellipse(x,y,5,5);
    stroke(255);
    line(mouseX,mouseY,mouseX+20,mouseY);
    line(mouseX,mouseY,mouseX,mouseY+20);
    line(mouseX,mouseY,mouseX-20,mouseY);
    line(mouseX,mouseY,mouseX,mouseY-20);
  }
  
  void update()
  {
    while(x > mouseX)
    {
      x = x-1;
    }
    while(x < mouseX)
    {
      x = x+1;
    }
    
    while(y > mouseY)
    {
      y = y-1;
    }
    while(y < mouseY)
    {
      y = y+1;
    }
  }
  
  
}