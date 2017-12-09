class Star
{
  float x;
  float y;
  float speed;
  
  Star(float x, float y, float speed)
  {
    x = random(0, width);
    y = random(0, height);
    speed = random(1,5);
  }
 
}