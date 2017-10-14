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

	background(200);
	
	// Body color
	fill('aqua');
	noStroke();
	strokeWeight(1);
	
	//Top-body
	arc(200,140,100,100,PI,TWO_PI);
	
	//Mid-body
	rect(200,200,100,120);
	
	//Bottom-body
	arc(200,260,100,100,0,PI);
	
	// Eye
	fill(255);
	ellipse(200,150,50,50);
	fill(0);
	
	strokeWeight(5);
	stroke('aqua');
	ellipse(200,150,20,20);
	
	// Pilus
	line(150,200,130,200);
	line(250,200,270,200);
	
	line(150,150,130,150);
	line(250,150,270,150);
	
	line(150,250,130,250);
	line(250,250,270,250);

	// Mouth
	strokeWeight(1);
	stroke(0);
	line(200,200,180,180);
	line(200,200,220,180);

}