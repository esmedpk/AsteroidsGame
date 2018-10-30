//your variable declarations here
Spaceship newFriend = new Spaceship();
public void setup() 
{
  size(500,500);
}
public void draw() 
{
  background(0);
  newFriend.show();
  newFriend.move();
}
public void keyPressed()
{
  if(keyCode == RIGHT)
  {
    newFriend.turn(5);
  }
  else if(keyCode == LEFT)
  {
    newFriend.turn(-5);
  }
  else if(keyCode == UP)
  {
    newFriend.accelerate(0.01);
  }
  else if(keyCode == DOWN)
  {
    newFriend.setDirectionX(0);
    newFriend.setDirectionY(0);
    newFriend.setX((int)(Math.random()*400));
    newFriend.setY((int)(Math.random()*400));
    newFriend.setPointDirection((int)(Math.random()*360));
  }
  
}
  
