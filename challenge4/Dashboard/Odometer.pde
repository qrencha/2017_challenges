class Odometer{

  int meter;

  Odometer(){
    meter = 0;
  }
  
  void displayOdo(){
    stroke(255);
    noFill();
    rectMode(CENTER);
    rect(width/2,height/2+60,60,20);
    //text("00000",width/2-28, height/2+68);
  }
  int getOdometer(){
    //println("meter is " + this.meter);
    return this.meter;
  }
  
  void setOdometer(int _meter){
    this.meter += _meter;
    //println("meter is " + this.meter);
  }
}