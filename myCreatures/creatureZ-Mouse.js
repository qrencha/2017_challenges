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

	background(180);

	// Landing gear of spaceship
	stroke('darkblue');
	strokeWeight(20);
	// left leg
	line(mouseX-90,mouseY+80,mouseX-110,mouseY+120);

	// right leg
	line(mouseX+90,mouseY+80,mouseX+110,mouseY+120);
	
	// back of glass
	noStroke();
	fill(255);
	ellipse(mouseX,mouseY-50,180,200);

	// Spaceship base
	noStroke();
	fill('blue');
	ellipse(mouseX,mouseY+30,300,160);
	
	// Body color
	fill('aqua');
	noStroke();
	strokeWeight(1);
	
	//Top-body
	arc(mouseX,mouseY-60,100,100,PI,TWO_PI);
	
	//Mid-body
	rect(mouseX,mouseY-30,100,70);
	
	//Bottom-body
	arc(mouseX,mouseY,100,80,0,PI);
	
	// Eye
	fill(255);
	ellipse(mouseX,mouseY-50,50,50);
	fill(0);
	ellipse(mouseX,mouseY-50,20,20);
	
	// Mouth
	stroke(0);
	line(mouseX,mouseY,mouseX-20,mouseY-20);
	line(mouseX,mouseY,mouseX+20,mouseY-20);
	
	// Spaceship Glass 
	noStroke();
	fill(254,110);
	ellipse(mouseX,mouseY-50,180,200);

	// // Pilus
	// strokeWeight(5);
	// stroke('aqua');
	// line(150,200,130,200);
	// line(250,200,270,200);
	
	// line(150,150,130,150);
	// line(250,150,270,150);
	
	// line(150,250,130,250);
	// line(250,250,270,250);
	
	
	
	
}