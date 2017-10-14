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
	line(200-90,200+80,200-110,200+120);

	// right leg
	line(200+90,200+80,200+110,200+120);
	
	// back of glass
	noStroke();
	fill(255);
	ellipse(200,200-50,180,200);

	// Spaceship base
	noStroke();
	fill('blue');
	ellipse(200,200+30,300,160);
	
	// Body color
	fill('aqua');
	noStroke();
	strokeWeight(1);
	
	//Top-body
	arc(200,200-60,100,100,PI,TWO_PI);
	
	//Mid-body
	rect(200,200-30,100,70);
	
	//Bottom-body
	arc(200,200,100,80,0,PI);
	
	// Eye
	fill(255);
	ellipse(200,200-50,50,50);
	fill(0);
	ellipse(200,200-50,20,20);
	
	// Mouth
	stroke(0);
	line(200,200,200-20,200-20);
	line(200,200,200+20,200-20);

	// Pilus
	strokeWeight(5);
	stroke('aqua');
	line(150,200,130,200);
	line(250,200,270,200);
	
	line(150,150,130,150);
	line(250,150,270,150);
	
	// Spaceship Glass 
	noStroke();
	fill(254,110);
	ellipse(200,200-50,180,200);
}