
void setup()
{
  size(600,600);
  
  player = new Player(width / 2, (height / 8) * 7);
  treasure = new Treasure(width / 2, height / 8);
  sTreasure = new SpecialTreasure(width + 50, random(100, height - 100), color(217,217,0));
  cars.add(new Car(width + 100, height/2, false, color(255,0,0)));
  cars.add(new Car(width + 100, height/4, true, color(0, 255, 0)));
  cars.add(new Car(width + 100, (height/4) * 3, true, (color(0,0,255))));


}

Player player;
Treasure treasure;
SpecialTreasure sTreasure;
ArrayList<Car> cars = new ArrayList<Car>();
int score;
int splashCount;


void drawRoad(float y, float w)
{
  stroke(255);
  line(0, y, w, y);
  line(0, y + 100, w, y + 100);
  
  for(int x = 25; x < width; x += 50)
  {
    line(x, y + 50, x + 25, y + 50);
  }

}

boolean[] keys = new boolean[526];


void draw()
{
  splashCount += 1;
    

  
  background(0);
  

  for(int y = height / 6; y < (height/6) * 5; y += 150)
  {
  drawRoad(y, width);
  }
  
  player.display();
  player.update();
  
  treasure.display();
  treasure.update();
  
  sTreasure.display();
  sTreasure.update();
  
  
  for(Car car:cars)
  {
  
  car.display();
  car.update();
  }
  fill(255);
  textSize(30);
  text("Score: " + score, width/10, (height/10));
  
  if(splashCount < 200)
  {
  splash();
  }

}

float distance(float x1, float y1, float x2, float y2)
{
  float xDist = x2 - x1;
  float yDist = y2 - y1;
  float dist = sqrt(xDist * xDist + yDist * yDist);
  return dist;
}
void resetGame()
{
 score = 0;
 player.position.x = width / 2; 
 player.position.y = (height / 8) * 7; 
 treasure.tPosition.x = width / 2;
 treasure.tPosition.y = height / 8;

}

void splash()
{
 fill(98,245,242);
 rectMode(CENTER);
 textSize(15);
 rect(width/2, height/2 + 5, width/2, height/4);
  fill(0);

 text("Use Arrow keys to move around.", width/2 - 115, height/2 - 25);
text("Collect treasure and avoid cars.", width/2 -113, (height/2) + 5);
text("Watch out for gold treasure for extra", width/2 -131, (height/2) + 35);
text("points.", width/2 -20, (height/2) + 55);



 
  
}

void keyPressed()
{
  keys[keyCode] = true;
}

void keyReleased()
{
  keys[keyCode] = false;
}
