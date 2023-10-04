int randint(int tippitytop) {
  return((int) (Math.random()*(tippitytop+1)));
}
void setup()
{
  noLoop();
  size(500, 600);
}
void draw()
{
  float total = 0;
  background(30); //your code here
  for (int y = 15; y < 450; y = y+60) {
    for (int x = 15; x < 450; x = x+60) {
      {
  Die ben = new Die(x,y);
  ben.roll();
  ben.show();
  total = total + ben.value;
      }
    }
  }
  fill(255);
  text ("Total Dots: " + (int)total, 200, 550);
}

void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //member variable declarations here
  int myX, myY;
  int value = 0;
  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY = y;
  }
  void roll()
  {
    //your code here
    value = randint(5)+1;
  }
  void show()
  {
    //your code here
    noStroke();
    fill(130);
    rect(myX+4, myY+4, 50, 50, 10);
    fill(255);
    rect(myX, myY, 50, 50, 10);
    fill(0);
    if (value == 1) {
      ellipse (myX+25, myY+25, 10, 10);
    } else if (value == 2) {
      ellipse (myX+15, myY+15, 10, 10);
      ellipse (myX+35, myY+35, 10, 10);
    } else if ( value == 3) {
      ellipse (myX+10, myY+10, 10, 10);
      ellipse (myX+40, myY+40, 10, 10);
      ellipse (myX+25, myY+25, 10, 10);
    } else if (value == 4) {
      ellipse (myX+12, myY+12, 10, 10);
      ellipse (myX+38, myY+12, 10, 10);
      ellipse (myX+12, myY+38, 10, 10);
      ellipse (myX+38, myY+38, 10, 10);
    } else if (value == 5) {
      ellipse (myX+12, myY+12, 10, 10);
      ellipse (myX+38, myY+12, 10, 10);
      ellipse (myX+12, myY+38, 10, 10);
      ellipse (myX+38, myY+38, 10, 10);
      ellipse (myX+25, myY+25, 10, 10);
    } else {
      ellipse (myX+10, myY+15, 10, 10);
      ellipse (myX+25, myY+15, 10, 10);
      ellipse (myX+40, myY+15, 10, 10);
      ellipse (myX+10, myY+35, 10, 10);
      ellipse (myX+25, myY+35, 10, 10);
      ellipse (myX+40, myY+35, 10, 10);
    }
  }
}
