class Button
{
  float X, Y;
  
  Button(float X,float Y)
  {
    this.X = X;
    this.Y = Y;
  }
  void render()
  {
   stroke(29, 135, 173);
   fill(29, 135, 173);
   ellipse(X,Y,20,20);
  }
  
  void change()
  {
   stroke(0);
   fill(random(0,255), (random(0,255)), (random(0,255)));
   ellipse(X,Y,20,20);
  }
  
}