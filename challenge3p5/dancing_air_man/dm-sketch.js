var ang1 = 0;
var ang2 = 0;
var inc = 0;
var color = 0;

function setup() {
	createCanvas(400, 400);
	rectMode(CENTER);
}


function draw() {
	background(255,10,233);
	inc += 0.1;
	ang1 = sin(inc)/5.0;
	ang2 = cos(inc)/5.0;
	man1 = man(width/2, height/2, ang1, ang2, 'Blue');
	man2 = man(270, height/2, -ang1, ang2-2, 'Red');
	man3 = man(80, height/2, -ang1, -ang2, 'Yellow');
}
  
  
function man(_x, _y, _ang1, _ang2, _color){
	stroke(_color);
	strokeWeight(40);
	push();
	translate(_x, _y+150);
	line(0, 0, 0, -70 );
	
	translate(0, -80);
	rotate(_ang1);
	line(0, 0, 0, -70 );
	
	translate(0, -80);
	rotate(_ang1);
	line(0, 0, 0, -70 );
	
	translate(0, -80);
	rotate(_ang1);
	line(0, 0, 0, -70 );
	
	strokeWeight(2);
	//rotate(_ang1);
	line(0,-70,0,-100);
	line(-10,-70,-10,-100);
	line(-18,-70,-18,-100);
	line(10,-70,10,-100);
	line(18,-70,18,-100);
	
	stroke(0);
	ellipse(8,-55, 10,10);
	ellipse(8,-55,2,2);
	ellipse(-8,-55, 10,10);
	ellipse(-8,-55,2,2);
	arc(0,-45,10,10,0,PI,CHORD);
	
	stroke(_color);
	strokeWeight(15);
	rotate(_ang2);
	line(20,-10,80,-10);
	rotate(_ang2);
	line(-20,-10,-80,-10);
	pop();
}