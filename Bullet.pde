class Bullet extends Floater
{
  public Bullet(Spaceship theShip)
  {
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myPointDirection = theShip.getPointDirection();
    double dRadians = myPointDirection*(Math.PI/180);
    myDirectionX = 5 * Math.cos(dRadians) + theShip.getDirectionX();
    myDirectionY = 5 * Math.sin(dRadians) + theShip.getDirectionY();
    myColor = color(255,0,0);
  }

  public void show()
  {
    fill(255,0,0);
    ellipse((float)myCenterX, (float)myCenterY, (float)3, (float)3);
    super.show();
  }
    public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      bullets.remove(this);  
    }    
    else if (myCenterX<0)
    {     
      bullets.remove(this);     
    }    
    if(myCenterY >height)
    {    
      bullets.remove(this);   
    } 
    
    else if (myCenterY < 0)
    {     
      bullets.remove(this);    
    }   
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
