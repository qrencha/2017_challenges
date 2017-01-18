Speedometer som;
Odometer odo;
FuelGauge fg;
float speed = 0.0;
float inc = 1.0;

void setup() {
  size(400, 300);
}

void draw() {
  background(0);
  som = new Speedometer();
  odo = new Odometer();
  fg = new FuelGauge();
  speed = speed + inc;
  if((speed == 80) || (speed == 0))
    inc = -1*inc;
  som.moveNeedle(speed);
}