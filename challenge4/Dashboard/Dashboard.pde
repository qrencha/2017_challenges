Speedometer som;
Odometer odo;
FuelGauge fg;
float speed = 0.0;
float sqspi = 0.0; // Squared Initial Speed
float sqspf = 0.0; // Squared Final Speed
int distance = 0;
float inc = 0.1;  // Servers to increase speed, somewhat like an acceleration
boolean keyReleased = false;
boolean mouseWheelMoved = false;
float e = 0.0;
int m = 0;
int MAX_SPEED = 80;

void setup() {
  frameRate(10);
  size(400, 300);
  odo = new Odometer();
  fg = new FuelGauge();
  som = new Speedometer(MAX_SPEED);

}

void draw() {
  background(0);
  odo.displayOdo();
  som.displaySM();
  
  if (fg.displayFG(m)){
    speed = speed - 1;
  }    

  //Get Odometer reading
  m = odo.getOdometer();
  String sn = nf(m, 5);
  //println("distance is " + m);
  text(sn,width/2-28, height/2+68);

  if((mouseWheelMoved)){
    sqspi = speed * speed;
    speed = speed + e;
    sqspf = speed * speed;
    //println("sqspi " + sqspi);
    //println("sqspf " + sqspf);
    //println("speed is " + int(speed));
    mouseWheelMoved = false;
  }
  
  if(speed <= 0){
    speed = 0;
  }
  else if ((speed > 0) && (speed <= 80)) {
    if (speed > 1){
      distance = int(abs((sqspf - sqspi)/(2*e)));

    }
    else if (speed == 1){
      distance = 1;
    }
    
    odo.setOdometer((distance));
      
    //println("speed is " + int(speed));
  }
  else if(speed >= MAX_SPEED){
    speed = MAX_SPEED;
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

void mouseWheel(MouseEvent event){
  e = event.getCount();
  mouseWheelMoved = true;
  //println(e);
}