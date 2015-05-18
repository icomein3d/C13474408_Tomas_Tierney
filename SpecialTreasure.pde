class SpecialTreasure
{
  
 int size = 20;
 float halfSize = size/2;
 PVector sPosition;
 float speed = 5;
 int count;
 color c;
 
 SpecialTreasure(float x, float y, color c)
  {
   
    sPosition = new PVector(x, y);
    this.c = c;

 
  } 
  
  void display()
  {
    pushMatrix();
    noStroke();

    translate(sPosition.x, sPosition.y);
    fill(c);
    rectMode(CENTER);

    rect(0, 0, size, size);


    popMatrix();
  }
  
   void reset()
  {
   sPosition.x = width + 50;
   sPosition.y = random(100, height - 100); 
   count = 0;
 
  }
  
  void update()
  {
    if(score >= 4)
    {
     count += 1; 
    }
  
  
  if(count > 300)
  {
    sPosition.x -= speed;
  }
  
  
    if(distance(player.position.x, player.position.y, sPosition.x, sPosition.y) < player.size) 
    {
     reset(); 
     score += 5;
    }
    
    
     if (sPosition.x < 0 - 100)
    {
      
      reset();
    }
    
    
  
  }
  
  
}
