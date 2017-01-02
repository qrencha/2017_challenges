Minion minion1;
//Minion minion2;
//Minion minion3;
boolean pressed = false;

void setup() {
  size(200, 200);
  ellipseMode(CENTER);
  rectMode(CENTER);
  minion1 = new Minion(width/2,height/2,1);
//  minion2 = new Minion(50,150,2);
//  minion3 = new Minion(50,100,4);
}

void draw() {
  background(255);
  minion1.drawMinion();
  minion1.moveMinion();
//  minion2.drawMinion();
//  minion2.moveMinion();
//  minion3.drawMinion();
//  minion3.moveMinion();
}

void mousePressed() {
  pressed =!pressed;
  minion1.change(pressed);
//  minion2.change(pressed);
//  minion3.change(pressed);
}
