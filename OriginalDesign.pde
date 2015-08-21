int rotationNum = 0;
int ellipseSize = 50;
void setup()
{
	size(400,400);
}
void draw()
{
	pushMatrix();
	rotate(rotationNum);
    object1();
    popMatrix();
}
void object1()
{
	background(50);
	fill(random(0,255),random(0,255),random(0,255));
	translate(200,200);
	ellipse(0,-325,ellipseSize,ellipseSize);
	ellipse(0,125,ellipseSize,ellipseSize);
	ellipse(-325,0,ellipseSize,ellipseSize);
	ellipse(175,0,ellipseSize,ellipseSize);
	rotationNum ++;
	ellipseSize = round(random(25,100));
}
