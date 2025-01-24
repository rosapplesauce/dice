int moneySum;
int total;
 void setup()

  {
     size(400,450);  
     noLoop();
  }
  void draw()
  {
background(23, 105, 41);
textSize(15);
total = 0;
 for ( int x=45; x < 400; x+=100) 
 {
   for ( int y=45; y<400; y+=100)
   {
Die test= new Die (x,y);
test.roll();
test.show();
total=total+moneySum;
   }
   
 }
 
textSize(20);
text("Sum equals: "+ total , 200, 420);
      //your code here
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int x;
      int y;
      Die(int xDolls, int yGuys) //constructor
      {
        x=xDolls;
        y=yGuys;//variable initializations here
      }
      void roll()
      {
      moneySum = (int)(Math.random()*8+1); //your code here
      }
      void show()
      {
strokeWeight(8);
stroke(255);
fill(random(150,255), 31, 29);
ellipse(x,y,60,60);
fill(255);
textAlign(CENTER);
if (moneySum == 1)
{
 text("$1", x,y);
}
else if(moneySum == 2)
{
  text("$2", x,y);
}
  else if(moneySum == 3)
{
  text("$3", x,y);
}
 else if(moneySum == 4)
{
  text("$4", x,y);
}
 else if(moneySum == 5)
{
  text("$5", x,y);
}
 else if(moneySum == 6)
{
  text("$6", x,y);
}
 else if(moneySum == 7)
{
  text("$7", x,y);
}
 else if(moneySum == 8)
{
  text("$8", x,y);
}
  //your code here
      }
  }
