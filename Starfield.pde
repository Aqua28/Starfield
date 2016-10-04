Particle[] jelly;
void setup()
{
	size(400, 400);
	jelly = new Particle[20];
	for(int i = 0; i<jelly.length; i++){
	jelly[i] = new NormalParticle(200, 200);
	jelly[0] = new OddballParticle(300, 100);
}
}

	
void draw()
{
	for(int i = 0; i<jelly.length; i++){
	jelly[i].show();
	jelly[i].move();
}
}
class NormalParticle implements Particle
{
	double myX;
	double myY;
	double dSpeed;
	
	double dAngle;
	int myColor;

	NormalParticle(int x, int y )
	
	{
		myX = x;
		myY= y;
		dSpeed = (double)Math.random()*10;
		dAngle = (double)Math.random()*(2*Math.PI);
		myColor = color(250, 250, 250);

	}

		 public void move()
		{
			myX = myX + Math.cos(dAngle)*dSpeed;
			myY = myY + Math.sin(dAngle)*dSpeed;
		}

		public void show()
		{
			ellipse((float)myX, (float)myY, 10, 10);
		}

	
}
interface Particle
{
	public void show();
	public void move();
}
class OddballParticle implements Particle 
{
	double myX;
	double myY;
	double dSpeed;
	double dAngle;
	int myColor;

	OddballParticle(int x, int y )
	
	{
		myX = x;
		myY= y;
		dSpeed = (double)Math.random()*10;
		dAngle = (double)Math.random()*(2*Math.PI);
		myColor = color(250, 250, 250);

	}

		public void move()
		{
			myX = myX - Math.cos(dAngle)*dSpeed;
			myY = myY - Math.sin(dAngle)*dSpeed;
		}

		public void show()
		{
			rect((float)myX, (float)myY, 10, 10);
		}
}
class JumboParticle //uses inheritance
{
	//your code here
}

