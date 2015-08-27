int rotationNum = 0;
int ellipseSize = 50;
int linePlace = 0;
int direction = 1;
boolean mouseIsDragging = false;
void setup()
{
	size(400,400);
	//frameRate(4);
}
void draw()
{
    strobe1();
    strobe2();
}
void strobe1()
{
	background(0);
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

	//red lines
	stroke(255,0,0);
	for(float i = 0; i < 5; i+= 0.1){
		line(0,0,linePlace,linePlace* i);
	}
	for(float i = 10; i < 10; i+= 0.5){
		line(0,0,linePlace,linePlace* i);
	}

	//yellow lines
	stroke(255,255,0);
	for(float i = 0; i < 5; i+= 0.1){
		line(400,400,linePlace,linePlace* i);
	}
	for(float i = 10; i < 10; i+= 0.5){
		line(400,400,linePlace,linePlace* i);
	}

	if(mouseIsDragging == false){
		if(linePlace > 440)
		{
			direction = -1;
		}
		if(linePlace < -200)
		{
			direction = 1;
		}
		linePlace += direction;
		noStroke();
		//ellipse(mouseX,mouseY,50,50);
	}
}
void strobe2(){
	//green lines
	stroke(0,255,0);
	for(float i = 0; i < 5; i+= 0.1){
		line(0,0,400 -linePlace,400 -(linePlace* i));
	}
	for(float i = 10; i < 10; i+= 0.5){
		line(0,0,400 -linePlace ,400 -(linePlace* i));
	}


	//blue lines
	stroke(100,100,255);
	for(float i = 0; i < 5; i+= 0.1){
		line(400,400,400 -linePlace,400 -(linePlace* i));
	}
	for(float i = 10; i < 10; i+= 0.5){
		line(400,400,400 -linePlace ,400 -(linePlace* i));
	}
}
void mouseDragged(){
	/*
	fill((int)(Math.random()*255),255,255);
	ellipse(mouseX,mouseY,50,50);
	*/
	mouseIsDragging = true;
	linePlace = mouseY;
}
void mouseReleased(){
	mouseIsDragging = false;
}
