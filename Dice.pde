void setup()
{
  size(300,400);
  noLoop();
  textAlign(CENTER);
}

int totalSum = 0;
void draw()
{
  int sum = 0;
  for (int y = 0; y < 300; y+= 100)
  {
    for(int x = 0; x < 300; x += 100)
    {
      Dice bob = new Dice(x, y);
      bob.show();
      sum = sum + bob.roll;
    }
  }
  totalSum += sum;
  strokeWeight(3);
  fill(255);
  
  rect(100-75,325+15,100,50);
  rect(100+75,325+15,100,50);
  
  fill(0);
  
  textSize(37);
  text("Roll", 150-75, 355-23);
  text("Total", 150+75, 355-23);
  
  textSize(30);
  text(sum, 150-75, 355+15);
  text(totalSum, 150+75, 355+15);
  


  
}

class Dice
{
  int myX, myY, roll;
  Dice(int x, int y)
  {
    myX = x;
    myY = y;
  }
  
  void show()
  {
    stroke(0);
    
    fill(255);
    strokeWeight(1);
    rect(myX,myY,100,100);
    fill(0);
    roll = (int)(Math.random()*6)+1;

    strokeWeight(15);
    
    if(roll == 1)
      point(myX+50,myY+50); 
    
    else if(roll == 2)
    {
      point(myX + 25, myY + 25);
      point(myX + 75, myY + 75);
    }
    
    else if(roll == 3)
    {
      point(myX + 25, myY + 25);
      point(myX + 75, myY + 75);
      point(myX + 50, myY + 50);
    }
    else if(roll == 4)
    {
      point(myX + 25, myY + 25);
      point(myX + 75, myY + 75);
      point(myX + 75, myY + 25);
      point(myX + 25, myY + 75);
    }
    else if(roll == 5)
    {
      point(myX + 25, myY + 25);
      point(myX + 75, myY + 75);
      point(myX + 75, myY + 25);
      point(myX + 25, myY + 75);
      point(myX + 50, myY + 50);
    }
    
    else if(roll == 6)
    {
      point(myX + 25, myY + 25);
      point(myX + 75, myY + 75);
      point(myX + 75, myY + 25);
      point(myX + 25, myY + 75);
      point(myX + 25, myY + 50);
      point(myX + 75, myY + 50);
    }
    
  }
}

void mousePressed()
{
  redraw();
}
