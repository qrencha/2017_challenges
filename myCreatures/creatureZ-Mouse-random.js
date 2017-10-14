var eyeX;
var eyeY;
var eX;
var eY;

function setup() {
	createCanvas(400,400);
	// ellipseMode(CENTER);
	rectMode(CENTER);
	frameRate(30);
}

function draw() {

	background(mouseY/2);

	// Stars
	fill(250);
	ellipse(50,50,3);
	ellipse(100,150,3);
	ellipse(150,100,3);
	ellipse(200,50,3);
	ellipse(250,150,3);
	ellipse(300,50,3);
	ellipse(350,100,3);
	
	
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
	
	// Front LEDs
	fill(random(0,230),random(0,230),0);
	ellipse(mouseX,mouseY+85,10);
	ellipse(mouseX+60,mouseY+70,10);
	ellipse(mouseX-60,mouseY+70,10);
	ellipse(mouseX+30,mouseY+80,10);
	ellipse(mouseX-30,mouseY+80,10);
	
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


	
	
}