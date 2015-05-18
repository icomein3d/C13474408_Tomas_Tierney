class Player
{
  float size = 30;
  float halfSize = size / 2;

  PVector position;
  float speed = 5;
  color c;


  Player(float x, float y )
  {
    position = new PVector(x, y);
  }

  void display()
  {
    pushMatrix();
    translate(position.x, position.y);
    rectMode(CENTER);
    fill(255);
    rect(0, 0, size, size);
    popMatrix();
  }



  void update()
  {

  if(splashCount > 200)
    {
    if (keys[UP]) 
    {
      position.y -= (speed);
    }

    if (keys[DOWN]) 
    {
      position.y += (speed);
    }
    if (keys[LEFT]) 
    {
      position.x -= (speed);
    }
    if (keys[RIGHT]) 
    {
      position.x += (speed);
    }
    }

    if (position.x  > width)
    {
      position.x = 0 + halfSize;
    }


    if (position.x  < 0)
    {
      position.x = width - halfSize;
    }


    if (position.y  > height)
    {
      position.y = height;
    }

    if (position.y  < 0 )
    {
      position.y = 0;
    }
  }
}

