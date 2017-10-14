var eyeX;
var eyeY;
var eX;
var eY;

function setup() {
	createCanvas(400,400);
	// ellipseMode(CENTER);
	rectMode(CENTER);
}

function draw() {

	background(mouseX/2, mouseY/2, 100);
	
	// Body color
	fill('aqua');
	noStroke();
	strokeWeight(1);
	
	//Top-body
	arc(mouseX,mouseY-60,100,100,PI,TWO_PI);
	
	//Mid-body
	rect(mouseX,mouseY,100,120);
	
	//Bottom-body
	arc(mouseX,mouseY+60,100,100,0,PI);
	
	// Eye
	fill(255);
	ellipse(mouseX,mouseY-50,50,50);
	fill(0);
	
	strokeWeight(5);
	stroke('aqua');
	ellipse(mouseX,mouseY-50,20,20);
	
	// Pilus
	line(mouseX-50,mouseY,mouseX-70,mouseY);
	line(mouseX+50,mouseY,mouseX+70,mouseY);
	
	line(mouseX-50,mouseY-50,mouseX-70,mouseY-50);
	line(mouseX+50,mouseY-50,mouseX+70,mouseY-50);
	                                   
	line(mouseX-50,mouseY+50,mouseX-70,mouseY+50);
	line(mouseX+50,mouseY+50,mouseX+70,mouseY+50);

	// Mouth
	strokeWeight(1);
	stroke(0);
	line(mouseX,mouseY,mouseX-20,mouseY-20);
	line(mouseX,mouseY,mouseX+20,mouseY-20);

}