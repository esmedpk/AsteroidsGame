//your variable declarations here
Spaceship newFriend = new Spaceship();
ArrayList <Bullet> bullets = new ArrayList<Bullet>();
ArrayList <Asteroid> rocks = new ArrayList<Asteroid>();
Star[] galaxy = new Star[200];

public void setup() 
{
  size(500,500);
  for(int i = 0; i < galaxy.length ; i++)
  {
    galaxy[i] = new Star();
  }
  for(int i = 0; i < 5 ; i++)
  {
    rocks.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < galaxy.length ; i++)
  {
    galaxy[i].show();
  }
  
  for(int i = 0; i < rocks.size() ; i++)
  {
    rocks.get(i).show();
    rocks.get(i).move();
    float distance = dist((newFriend.getX()),(newFriend.getY()),(rocks.get(i).getX()),(rocks.get(i).getY()));
    if (distance<10)
        rocks.remove(i);
  }
  
  for (int i = 0; i < bullets.size(); i++)
  {
    bullets.get(i).show();
    bullets.get(i).move();
  }
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
    newFriend.setX((int)(Math.random()*500));
    newFriend.setY((int)(Math.random()*500));
    newFriend.setPointDirection((int)(Math.random()*360));
  }
  if(key == ' ')
  {
    bullets.add(new Bullet(newFriend));
  }
}
  
