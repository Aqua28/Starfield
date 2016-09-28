NormalParticle jelly;
void setup()
{
	size(400, 400);

}
void draw()
{
	jelly = new NormalParticle();
	jelly.show();
	jelly.move();
}
class NormalParticle
{
	double myX;
	double myY;
	double dSpeed;
	double dDirection; //angle?
	
	int myColor;

	NormalParticle(int x, int y)
	{
		myX =200;
		myY=200;
		dSpeed = (double)Math.random()*10;
		dDirection = (double)Math.random()*(2*Math.PI);
		
		myColor = color(250, 250, 250);

	}

		void move()
		{
			myX = myX + (Math.cos(dDirection)*dSpeed);
			myY = myY + Math.sin(dDirection)*dSpeed;
		}

		void show()
		{
			ellipse((float)myX, (float)myY, 10, 10);
		}

	
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

