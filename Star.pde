class Star //note that this class does NOT extend Floater
{
  int myX,myY;
  Star()
  {
   myX = (int)(Math.random()*500);
   myY = (int)(Math.random()*500);
  }
  void show()
  {
    fill(255,255,255);
    ellipse(myX,myY,3,3);
  }
}
