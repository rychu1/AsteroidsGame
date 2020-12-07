class Spaceship extends Floater  
{   
   public Spaceship() 
   {
     corners = 4;
     xCorners = new int[]{-8, 16, -8, -2};
     yCorners = new int[]{-8, 0, 8, 0};
     myColor = 255;
     myCenterX = 50.1;
     myCenterY = 50.1;
     myXspeed = 0;
     myYspeed = 0;
     myPointDirection = 0;
   }
   public void setXspeed(int a)
   {
     myXspeed = a;
   }
   public void setYspeed(int b)
   {
     myYspeed = b;
   }
   public void setDirection(double d)
   {
     myPointDirection = d;
   }
   public void setCenterX(double x)
   {
     myCenterX = x;
   }
   public void setCenterY(double y)
   {
     myCenterY = y;
   }
   public double getX()
   {
     return myCenterX;
   }
   public double getY()
   {
     return myCenterY;
   }
   public double getDirection()
   {
     return myPointDirection;
   }
}
