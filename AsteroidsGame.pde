Spaceship wee = new Spaceship();
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
Star[] nightsky = new Star[200];
ArrayList <Bullet> shoot = new ArrayList <Bullet>();
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
     if(key == 'f')
     {
       Bullet laser = new Bullet(wee);
       shoot.add(laser);
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
  for (int i = 0; i < shoot.size(); i++)
  {
    shoot.get(i).move();
    shoot.get(i).show();
  }
  for (int i = 0; i < shoot.size(); i++)
  {
    for (int j = 0; j < rocks.size(); j++)
    {
      float f = dist((float)shoot.get(i).getX(), (float)shoot.get(i).getY(), (float)rocks.get(j).getX(), (float)rocks.get(j).getY());
      if (f<50)
      {
        rocks.remove(j);
        shoot.remove(i);
        break;
      }
    }
  }
}
