int rotationNum = 0;
int ellipseSize = 50;
int linePlace = 0;
void setup()
{
	size(400,400);
	frameRate(4);
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
	background(10, 10, 10, 1);
	/*
	fill(random(0,255),random(0,255),random(0,255));
	translate(200,200);
	ellipse(0,-325,ellipseSize,ellipseSize);
	ellipse(0,125,ellipseSize,ellipseSize);
	ellipse(-325,0,ellipseSize,ellipseSize);
	ellipse(175,0,ellipseSize,ellipseSize);
	rotationNum ++;
	ellipseSize = round(random(25,100));
	*/
	stroke(255,0,0);
	for(float i = 0; i < 5; i+= 0.1){
		line(0,0,linePlace,linePlace* i);
	}
	for(float i = 10; i < 10; i+= 0.5){
		line(0,0,linePlace,linePlace* i);
	}

	linePlace += 1;
	noStroke();
	ellipse(mouseX,mouseY,50,50);
}
void mouseMoved(){
	ellipse(mouseX,mouseY,50,50);
}