Speedometer som;
Odometer odo;
FuelGauge fg;
float speed = 0.0;
float sqspi = 0.0; // Squared Initial Speed
float sqspf = 0.0; // Squared Final Speed
float distance = 0.0;
float inc = 0.1;  // Servers to increase speed, somewhat like an acceleration
boolean keyReleased = false;

void setup() {
  size(400, 300);
  odo = new Odometer();
  fg = new FuelGauge();
  som = new Speedometer(80);

}

void draw() {
  background(0);
  odo.displayOdo();
  fg.displayFG();
  som.displaySM();

  //Get Odometer reading
  int m = odo.getOdometer();
  println("distance is " + m);
  text(m,width/2-28, height/2+68);

  if(keyPressed){
    sqspi = speed * speed;
    speed = speed + inc;
    sqspf = speed * speed;
    //println("sqspi " + sqspi);
    //println("sqspf " + sqspf);
    distance = ((sqspf - sqspi)/(2*inc));
    odo.setOdometer(int(distance));
    println("speed is " + int(speed));
    if((speed >= 80) || (speed <= 0))
      inc = -1*inc;
  }
  if(keyReleased){
    sqspi = speed * speed;
    speed = speed - inc*1.1;
    sqspf = speed * speed;
    println("sqspi " + sqspi);
    println("sqspf " + sqspf);
    distance = abs(((sqspf - sqspi)/(2*inc)));
    odo.setOdometer(int(distance));
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