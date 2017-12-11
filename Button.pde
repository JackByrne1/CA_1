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
   stroke(0);
   fill(29, 135, 173);
   ellipse(X,Y,20,20);
  }
  
  void change()
  {
   stroke(0);
   fill(192, 198, 17);
   ellipse(X,Y,20,20);
  }
  
}