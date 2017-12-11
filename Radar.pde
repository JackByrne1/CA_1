class Radar
{
  float cx, cy;
  float radius;
  float theta;
  float speed;
  float frequency;
  color c;
  
  Radar(float cx, float cy, float radius, float frequency, color c)
  {
    this.cx = cx;
    this.cy = cy;
    this.radius = radius;
    this.frequency = frequency;
    this.speed = (TWO_PI / 60.0) * frequency;
    this.theta = 0;
    this.c = c;
  }
  
  void update()
  {
    theta += speed;
  }
  
  void render()
  { 
    fill(0);
    strokeWeight(3);
    ellipse(cx, cy, radius * 2, radius * 2);
    stroke(0, 255, 255);
    noFill();
    ellipse(cx, cy, radius * 2, radius * 2);
    int trailLength = 10;
    for(int i = 0 ; i < trailLength ; i ++)
    {
      stroke(192, 198, 17);
      float x = cx + sin(theta + i * speed) * radius;
      float y = cy -cos(theta + i * speed) * radius;
      line(cx, cy, x, y);
    }
  }
}