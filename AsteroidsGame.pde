Spaceship one = new Spaceship();
Star[] nightsky = new Star[200];
public void keyPressed() 
   {
     if(key == 'r') 
     {
       one.setXspeed(0);
       one.setYspeed(0);
       one.setCenterX((int)(Math.random()*1000));
       one.setCenterY((int)(Math.random()*1000));
     }
     if(key == 'a')
     {
       one.turn(-10);
     }
     if(key == 'd')
     {
       one.turn(10);
     }
     if(key == 'q')
     {
       one.accelerate(1);
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
}
public void draw() 
{
  background(0);
  one.show();
  one.move();
  for(int i = 0; i<nightsky.length; i++)
  {
    nightsky[i].show();
  }
}
