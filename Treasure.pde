class Treasure
{
  float size = 20;
  float halfSize = size/2;
  PVector tPosition;

  Treasure(float x, float y)
  {
    tPosition = new PVector(x, y);
  }

  void display()
  {
    pushMatrix();
    noStroke();

    translate(tPosition.x, tPosition.y);
    fill(255, 0, 0);
    rectMode(CENTER);

    rect(0, 0, size, size);


    popMatrix();
  }
  
  void reset()
  {
   tPosition.x = random(25, width - 25);
   tPosition.y = random(25, height - 25); 
 
  }

  void update()
  {
  
    if(distance(player.position.x, player.position.y, tPosition.x, tPosition.y) < player.size) 
    {
     reset(); 
     score ++;
    }
  
  }
}


