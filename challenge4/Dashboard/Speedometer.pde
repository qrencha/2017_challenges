class Speedometer{
  int MAX_SPEED = 110; 

  Speedometer(){

    stroke(255);
    // gauge window
    noFill();
    ellipse(width/2,height/2,200,200);
    
    // gauge needle
    fill(255);
    ellipse(width/2,height/2,10,10);
    line(width/2,height/2,cos(0)+120,sin(0)+120);
    
    // speeds in multiples of 10
    for (int multiple=10; multiple<=MAX_SPEED; multiple +=10){
      textSize(18);
      float multiAngle = map(multiple,10,MAX_SPEED,(PI-QUARTER_PI),(TWO_PI+QUARTER_PI));
      println("multiAngle = " + multiAngle);
      text(str(multiple),width/2+100*cos(multiAngle), height/2+100*sin(multiAngle));
    }  
  }
  
  float moveNeedle(){
    // temporary input using the seconds from time
    float s = map(second(), 0, 60, 0, TWO_PI);
    return s;
  }
}