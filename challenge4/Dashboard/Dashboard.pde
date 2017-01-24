Speedometer som;
Odometer odo;
FuelGauge fg;
float speed = 0.0;
float inc = 0.1;
boolean keyReleased = false;

void setup() {
  size(400, 300);
  odo = new Odometer();
  fg = new FuelGauge();
  som = new Speedometer();

}

void draw() {
  background(0);
  odo.displayOdo();
  fg.displayFG();
  som.displaySM();

  //text(int(second()),width/2-28, height/2+68);
  int m = odo.getOdometer();
  println("meter is " + m);
  text(m,width/2-28, height/2+68);

  if(keyPressed){
    speed = speed + inc;
    odo.setOdometer(int(speed));
    println("speed is " + int(speed));
    if((speed >= 80) || (speed <= 0))
      inc = -1*inc;
  }
  if(keyReleased){
    speed = speed - inc*1.1;
  }
  if((keyReleased) && (speed <= 0)){
    speed = 0;
  }
  
  som.moveNeedle(speed);
}

void keyPressed(){
  keyReleased = false;
}

void keyReleased(){
  keyReleased = true;
  println("Released");
}