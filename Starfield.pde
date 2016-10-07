Particle[] jelly;

void setup()
{
  
	size(400, 400);
	
	jelly = new Particle[1000];
	for(int i = 0; i<jelly.length; i++){
	
	jelly[0] = new OddballParticle(200, 200);
jelly[i] = new NormalParticle();
	jelly[1] = new JumboParticle();
	jelly[2]= new JumboParticle();
jelly[3] = new JumboParticle();
}
}

	
void draw()
{
  background(0);
	for(int i = 0; i<jelly.length; i++){
	jelly[i].show();
	jelly[i].move();

}
}
class NormalParticle implements Particle
{
	double myX;
	double myY;
	int dSpeed;
	double dAngle;
	int myColor;

	NormalParticle()
	
	{
		myX = 200;
		myY= 200;
		dSpeed = (int)(Math.random()*10);
		dAngle = (Math.random()*(2*Math.PI));
		myColor = color((int)(Math.random()*250), 0, (int)(Math.random()*250),150);

	}

		 public void move()
		{
			if(frameCount%5==0){
			myX = myX + Math.cos(dAngle)*dSpeed;
			myY = myY + Math.sin(dAngle)*dSpeed;
		}
		}

		public void show()
		{
			noStroke();
			fill(myColor);
			ellipse((float)myX, (float)myY, 8, 8);
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
			if(frameCount%4==0){
      myX = myX + Math.cos(dAngle)*dSpeed;
      myY = myY + Math.sin(dAngle)*dSpeed;
}
		}

		public void show()   
		{
			fill((int)(Math.random()*250), 250, (int)(Math.random()*250));
			ellipse((float)myX, (float)myY, 60, 60);
		}
}
class JumboParticle extends NormalParticle
{
	public void show()
	{
	 	fill(250, (int)(Math.random()*240), 200);
		ellipse((float)myX, (float)myY, 33, 33);
	} 
}

void mousePressed()
{
  redraw();
}