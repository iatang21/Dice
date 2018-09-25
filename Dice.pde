void setup()
{
	background(0);
	noStroke();
	size(500,500);
	noLoop();
	textSize(50);
	textAlign(CENTER);
}
void draw()
{
	fill(0);
	int total = 0;
	rect(0,0,500,500);
	//dice loops
	for(int y=15;y<430;y+=60)
		{
			for(int x=15;x<490;x+=60)
				{	
					Die bear = new Die(x,y);
					bear.show();

					if(bear.dieRoll==1)
						total = total + 1;
					else if(bear.dieRoll==2)
						total = total + 2;
					else if(bear.dieRoll==3)
						total = total + 3;
					else if(bear.dieRoll==4)
						total = total + 4;
					else if(bear.dieRoll==5)
						total = total + 5;
					else if(bear.dieRoll==6)
						total = total + 6;
				}
			}


	text("The total is " + total,250,475);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX;
	int myY;
	int dieRoll;

	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		roll();
	}
	void roll()
	{
		dieRoll = (int)(Math.random()*6)+1;			
	}
	void show()
	{
		fill(130,30,255);
		rect(myX,myY,50,50,15);

		if(dieRoll==1)
		{
			fill(255);
			ellipse(myX+25,myY+25,15,15);
		}
		else if(dieRoll==2)
		{	fill(255);
			ellipse(myX+15,myY+25,12,12);
			ellipse(myX+35,myY+25,12,12);
		}
		else if(dieRoll==3)
		{
			fill(255);
			ellipse(myX+12,myY+12,12,12);
			ellipse(myX+25,myY+25,12,12);
			ellipse(myX+38,myY+38,12,12);
		}
		else if(dieRoll==4)
		{
			fill(255);
			ellipse(myX+15,myY+15,12,12);
			ellipse(myX+35,myY+15,12,12);
			ellipse(myX+15,myY+35,12,12);
			ellipse(myX+35,myY+35,12,12);
		}
		else if(dieRoll==5)
		{
			fill(255);
			ellipse(myX+13,myY+13,12,12);
			ellipse(myX+37,myY+13,12,12);
			ellipse(myX+13,myY+37,12,12);
			ellipse(myX+37,myY+37,12,12);
			ellipse(myX+25,myY+25,12,12);
		}
		else if(dieRoll==6)
		{
			fill(255);
			ellipse(myX+16,myY+12,12,12);
			ellipse(myX+16,myY+25,12,12);
			ellipse(myX+16,myY+38,12,12);
			ellipse(myX+34,myY+12,12,12);
			ellipse(myX+34,myY+25,12,12);
			ellipse(myX+34,myY+38,12,12);
		}


	}
}
