Spaceship wee = new Spaceship();
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
Star[] nightsky = new Star[200];
public void keyPressed() 
   {
     if(key == 'r') 
     {
       wee.setXspeed(0);
       wee.setYspeed(0);
       wee.setCenterX((Math.random()*1000));
       wee.setCenterY((Math.random()*1000));
     }
     if(key == 'a')
     {
       wee.turn(-10);
     }
     if(key == 'd')
     {
       wee.turn(10);
     }
     if(key == 'w')
     {
       wee.accelerate(0.5);
     }
   }
public void setup() 
{
  background(0);
  size(1000, 1000);
  for(int i = 0; i<nightsky.length; i++)
  {
    nightsky[i] = new Star();
  }
  for(int i = 0; i< 10; i++)
  {
    Asteroid rock = new Asteroid();
    rocks.add(rock);
  }
}
public void draw() 
{
  background(0);
  wee.show();
  wee.move();
  for(int i = 0; i<nightsky.length; i++)
  {
    nightsky[i].show();
  }
  for (int i = 0; i < rocks.size(); i++)
  {
    rocks.get(i).move();
    rocks.get(i).show();
    float d = dist((float)wee.getX(),(float) wee.getY(), (float)rocks.get(i).getX(), (float)rocks.get(i).getY());
    if (d<25)
    {
      rocks.remove(i);
    }
  }
}
