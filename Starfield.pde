Particle[] jelly;
void setup()
{
	size(400, 400);
	background(0);
	jelly = new Particle[50];
	for(int i = 0; i<jelly.length; i++){
	jelly[i] = new NormalParticle();
	jelly[0] = new OddballParticle(50, 100);
	jelly[1] = new JumboParticle();
	jelly[2] = new OddballParticle(230, 100);
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

	NormalParticle()
	
	{
		myX = 200;
		myY= 200;
		dSpeed = Math.random()*10;
		dAngle = (Math.random()*(2*Math.PI));
		myColor = color((int)(Math.random()*250), (int)(Math.random()*250), (int)(Math.random()*250), 80);

	}

		 public void move()
		{
			if(frameCount%4==0){
			myX = myX + Math.cos(dAngle)*dSpeed;
			myY = myY + Math.sin(dAngle)*dSpeed;
		}
		}

		public void show()
		{
			noStroke();
			fill(myColor);
			ellipse((float)myX, (float)myY, 5, 5);
		}

		void MousePressed()
		{

			myX = mouseX;
			myY = mouseY;
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
	int dSpeed;
	double dAngle;
	int myColor;

	OddballParticle(int x, int y )
	
	{
		myX = x;
		myY= y;
		dSpeed = (int)Math.random()*10;
		dAngle = (double)Math.random()*(2*Math.PI);
		myColor = color((int)(Math.random()*250), 250, (int)(Math.random()*250));

	}

		public void move()
		{
			myX = myX + (int)Math.cos(dAngle)*dSpeed;
			myY = myY + (int)Math.sin(dAngle)*dSpeed;
		}

		public void show()   
		{
			fill(myColor);
			ellipse((float)myX, (float)myY, 20, 20);
		}
}
class JumboParticle extends NormalParticle
{
	void show()
	{
	 	fill(myColor);
		ellipse(100, 200, 30, 30);
	} 
}

