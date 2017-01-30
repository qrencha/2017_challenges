class FuelGauge{

  int level;
  int guageH;
  int gPm;  // gallons per meter
  boolean Empty;
  
  FuelGauge(){
    guageH = 100; // guage height
    level = 0;
    Empty = false;
  }
  
  boolean displayFG(int _distance){
    stroke(255);
    noFill();
    rectMode(CENTER);
    rect(width-40,height/2,20,guageH);
    rectMode(CORNER);
    noStroke();
    fill(255,250,0);
    
    gPm = _distance/10;
    //println("gPm is " + gPm);
    //println("level is " + level);
    if ((gPm % 10 == 0) && (gPm != 0)){
      level = level + 1;
      if (level == 100){
        Empty = true;
      }
    }
    //println("guageH-level is " + str(guageH-level));
    rect(width-48,height/2-49+level,17,guageH-level);
    text("Fuel",width-60, height/2-60);

    return Empty;
  }
}