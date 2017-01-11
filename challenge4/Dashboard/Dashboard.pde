Speedometer som;
Odometer odo;
FuelGauge fg;

void setup() {
  size(400, 300);
}

void draw() {
  background(0);
  som = new Speedometer();
  odo = new Odometer();
  fg = new FuelGauge();
  //println(som.moveNeedle());
}