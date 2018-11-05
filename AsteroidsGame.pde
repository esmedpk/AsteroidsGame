//your variable declarations here
Spaceship newFriend = new Spaceship();
Asteroid one = new Asteroid();
Star[] galaxy = new Star[200];
public void setup() 
{
  size(500,500);
  for(int i = 0; i < galaxy.length ; i++)
  {
    galaxy[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < galaxy.length ; i++)
  {
    galaxy[i].show();
  }
  newFriend.show();
  newFriend.move();
  one.show();
  one.move();
  
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
    newFriend.setX((int)(Math.random()*500));
    newFriend.setY((int)(Math.random()*500));
    newFriend.setPointDirection((int)(Math.random()*360));
  }
}
  
