public void setup()
{
	size(400,400);
}
public void draw()
{
	background(255,205,225);
	//fill(255,0,0);
	myFractal(200,200,200);
}
public void mouseDragged()//optional
{

}
public void myFractal(int x, int y, int rad) 
{

	//rect(x,y,rad,rad);
	ellipse(x,y,rad,rad);
	if(rad>5)
	{
		fill(255,90,90);
		myFractal(x-rad,y,rad/2);
		fill(250,0,160);
		myFractal(x,y-rad,rad/2);
		fill(250,110,255);
		myFractal(x+rad,y,rad/2);
		fill(255);
		myFractal(x,y+rad,rad/2);
	}
}