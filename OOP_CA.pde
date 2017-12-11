ArrayList<Star> stars = new ArrayList<Star>();

void setup() 
{
  Star p;
  size(500,500);
  background(0,0,0);
  for(int i = 0; i < 100; i++)
  {
    stars.add(new Star());
  }
}

void draw()
{
  background(0,0,0);
  for(Star p :stars)
  {
    p.render();
    p.update();
  }
  
  //Cockpit
  stroke(46, 49, 56);
  fill(46, 49, 56);
  strokeWeight(0);
  rect(125,350,250,150);
  triangle(125,350,0,450,125,450);
  rect(0,450,125,50);
  triangle(375,350,375,450,500,450);
  rect(375,450,125,50);
  rect(0,0,500,150);
  strokeWeight(10);
  stroke(165, 45, 29);
  line(125,350,0,150);
  line(375,350,500,150);
  line(0,150,500,150);
  line(125,350,0,450);
  line(375,350,500,450);
  line(125,350,375,350);
  
  
}