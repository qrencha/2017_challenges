
float ang1, ang2;
float inc;

void setup() {
  size(300, 400);
  rectMode(CENTER);
  stroke(255, 0, 0);
}

void draw() {
  background(255);
  inc += 0.1;

  ang1 = sin(inc)/5.0;
  ang2 = cos(inc)/5.0;
  bodyPart(width/2, height/2, ang1, ang2);
  strokeWeight(1);
}

void bodyPart(int _x, int _y, float _ang1, float _ang2) {
  strokeWeight(40);
  pushMatrix();
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
    
  stroke(255,0,0);
  strokeWeight(15);
  rotate(_ang2);
  line(20,-10,80,-10);
  rotate(_ang2);
  line(-20,-10,-80,-10);
  
  

  popMatrix();
}
