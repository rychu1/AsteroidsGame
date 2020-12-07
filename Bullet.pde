class Bullet extends Floater
{
  public Bullet(Spaceship wee)
  {
    myCenterX = wee.getX();
    myCenterY = wee.getY();
    myPointDirection = wee.getDirection();
    accelerate(6.0);
    myColor = 255;
  }
  public void show()
  {
   fill(myColor);   
    stroke(myColor);    
    ellipse((float)myCenterX, (float)myCenterY, 50, 50);
  }
   public double getX()
   {
     return myCenterX;
   }
   public double getY()
   {
     return myCenterY;
   }
}
