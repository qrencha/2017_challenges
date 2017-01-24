class FuelGauge{

  int level;
  
  FuelGauge(){
    level = 100;
  }
  
  void displayFG(){
    stroke(255);
    noFill();
    rectMode(CENTER);
    rect(width-40,height/2,20,100);
    text("Fuel",width-60, height/2-60);
  }
}