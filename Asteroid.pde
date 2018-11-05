class Asteroid extends Floater
{
  int rotSpeed = (int)(Math.random()*10)+1;
	public Asteroid()
	{
		  corners = 7;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = 6;
      yCorners[0] = 11;
      xCorners[1] = 12;
      yCorners[1] = 8;
      xCorners[2] = 11;
      yCorners[2] = -4;
      xCorners[3] = 8;
      yCorners[3] = -9;
      xCorners[4] = -5;
      yCorners[4] = -11;
      xCorners[5] = -10;
      yCorners[5] = -4;
      xCorners[6] = -7;
      yCorners[6] = 5;
      myColor = color(126,126,126);
      myCenterX = 150;
      myCenterY = 150;
      myPointDirection = 0;
      myDirectionX = (Math.random()*10)-5;
      myDirectionY = (Math.random()*10)-5;
      
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
    
    public void move()
    {
      turn(rotSpeed);
      super.move();
    }
}
