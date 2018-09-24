void setup()
{
	background(0);
	noStroke();
	size(500,500);
	noLoop();
}
void draw()
{
	fill(0);
	rect(0,0,500,500);
	Die one = new Die(20,20);
	one.show();
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
		dieRoll = 3;//(int)(Math.random()*6)+1;			
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

	}
}
