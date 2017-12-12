ArrayList<Star> stars = new ArrayList<Star>();

ArrayList<Meter> bars = new ArrayList<Meter>();
void setup() 
{
  size(500,500);
  background(0,0,0);
  for(int i = 10; i < 490; i++)
  {
    if(i % 10 == 0)
    {
      bars.add(new Meter(i,10));
    }
  }
  
  for(int i = 0; i < 100; i++)
  {
    stars.add(new Star());
  }
  
   radar1 = new Radar(width / 2, 405, 50, 0.5, color(0));
   
   b1 = new Button(375,400);
   b2 = new Button(375,475);
   b3 = new Button(125,400);
   b4 = new Button(125,475);
}

Button b4;
Button b3;
Button b2;
Button b1;

Radar radar1;

Bullet BU1;

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
  strokeWeight(0);
  stroke(255);
  fill(29, 135, 173);
  rect(5,5,490,135);
  
  radar1.render();
  radar1.update();
  
  b1.render();
  b2.render();
  b3.render();
  b4.render();
  
  for(Meter r : bars)
  {
    r.render();
  }
  
}
void keyPressed()
  {
    switch(key)
    {
      case 'w':
        b1.change();
        for(Star p :stars)
        {
          p.changeSpeed();
        }
        break;
        
       case 'd':
        b2.change();
        for(Star p :stars)
        {
          p.returnSpeed();
        }
        break;
        
       case 's':
        b3.change();
        BU1 = new Bullet(width/2, 405);
        BU1.render();
        BU1.update();
        break;
        
       case 'a':
        b4.change();
        for(Meter r : bars)
        {
          r.update();
        }
        break;
    }
  }