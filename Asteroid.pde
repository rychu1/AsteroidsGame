class Asteroid extends Floater
{
  public Asteroid()
  {
    corners = 6;
    xCorners = new int[]{-11, 7, 13, 6, -11, -5};
    yCorners = new int[]{-8, -8, 0, 10, 8, 0};
    myColor = 255;
    myXspeed = (Math.random()*10-5);
    myYspeed = (Math.random()*10-5);
    myCenterX = (Math.random()*1000);
    myCenterY = (Math.random()*1000);
    myPointDirection = 0;
  }
  public void move()
  {
    turn(-3);
    super.move();
  }
  public double getX()
   {
     return (float)myCenterX;
   }
   public double getY()
   {
     return (float)myCenterY;
   }
}
