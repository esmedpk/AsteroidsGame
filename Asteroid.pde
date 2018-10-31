class Asteroid extends Floater
{
	public Asteroid()
	{
		corners = 7;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -7;
      yCorners[0] = -9;
      xCorners[1] = 16;
      yCorners[1] = 1;
      xCorners[2] = -6;
      yCorners[2] = 11;
      xCorners[3] = -18;
      yCorners[3] = 3;
      xCorners[4] = -20;
      yCorners[4] = 4;
      xCorners[5] = -18;
      yCorners[5] = -3;
      xCorners[6] = 2;
      yCorners[6] = -3;
      myColor = color(126,126,126);
      myCenterX = 100;
      myCenterY = 100;
      myPointDirection = 0;
      myDirectionX = 0;
      myDirectionY = 0;
	}
    public void setX(int x){myCenterX = x;}  
    public int getX(){return (int)myCenterX;}   
    
    public void setY(int y){myCenterY = y;}   
    public int getY(){return (int)myCenterY;}   
    
    public void setDirectionX(double x){myDirectionX = x;}   
    public double getDirectionX(){return myDirectionX;}   
    
    public void setDirectionY(double y){myDirectionY = y;}   
    public double getDirectionY(){return myDirectionY;}    
    
    public void setPointDirection(int degrees){myPointDirection = degrees;}   
    public double getPointDirection(){return myPointDirection;}
}
