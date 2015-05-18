class Car
{

  float w =  70;
  float l = 40;
  float halfWidth = w / 2;
  float halfLength = l / 2;
  boolean facingLeft;
  color c;

  PVector carPosition;
  float speed = 10;

  Car(float x, float y, boolean facingLeft, color c)
  {
    carPosition = new PVector(x, y);
    this.facingLeft = facingLeft;
    this.c = c;
  }
  
  void reset()
  {
   
   c = color(random(0,255),random(0,255),random(0,255));
   speed = (random(10,20));
    
  }

  void display()
  {
    pushMatrix();
    noStroke();
    fill(c);
    //    translate(carPosition.x, carPosition.y);
    rectMode(CENTER);
    rect(carPosition.x, carPosition.y, w, l);
    if(facingLeft == true)
    {
    rect(carPosition.x - 20, carPosition.y, w, l - 10);
    }
    else{
      rect(carPosition.x + 20, carPosition.y, w, l - 10);
    }
    popMatrix();
  }

  void update()
  {
    
    if(distance(player.position.x, player.position.y, carPosition.x, carPosition.y) < player.size) 
    {
     resetGame(); 
     sTreasure.reset();

    }

    if (facingLeft == true)
    {
      carPosition.x -= speed;
    }

    if (facingLeft == false)
    {
      carPosition.x += speed;
    }

    if (facingLeft == true && carPosition.x < 0 - 100)
    {
      carPosition.x = width + 100;
      reset();
    }

    if (facingLeft == false && carPosition.x > width + 100)
    {
      carPosition.x = 0 - 100;
      reset();
    }
  }
}

