class Star
{
  float x;
  float y;
  float speed;
  float size;
  
  Star()
  {
    x = random(0, width);
    y = random(0, height);
    speed = random(-5,5);
    size = random(0,10);
  }
  
  void render()
  {
    strokeWeight(size);
    stroke(255);
    fill(255);
    ellipse(x,y,5,5);
  }
  
  void update()
 {
   x = x + speed;
   y = y + speed;
   if(x > width || x < 0)
   {
     x = random(0, width);
   }
   if(y > height || y < 0)
   {
     y = random(0, height);
   }
 }
 void changeSpeed()
 {
   speed = random(-15,15);
 }
 void returnSpeed()
 {
   speed = random(-5,5);
 }
}