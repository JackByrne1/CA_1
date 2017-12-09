ArrayList<Star> stars = new ArrayList<Star>();
void setup() 
{
  Star p;
  size(500,500);
  background(0,0,0);
  
  for(int i; i < 100; i++)
  {
    stars.add(new Star());
  }
}

void draw()
{
  background(0,0,0);
}