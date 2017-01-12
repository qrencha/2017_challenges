class Speedometer{
  int MAX_SPEED = 80; 

  Speedometer(){

    stroke(255);
    // gauge window
    noFill();
    // outer circle
    ellipse(width/2,height/2,220,220);
    
    // number line
    arc(width/2,height/2,200,200,(PI-QUARTER_PI),(TWO_PI+QUARTER_PI));
    for (int multiple=0; multiple<=MAX_SPEED; multiple +=10){
      pushMatrix();
      float multiAngle = map(multiple,0,MAX_SPEED,(PI-QUARTER_PI),(TWO_PI+QUARTER_PI));
      translate(width/2+110*cos(multiAngle),height/2+110*sin(multiAngle));
      rotate(multiAngle+QUARTER_PI);
      line(-10,10,0,0);
      popMatrix();
    }


    // gauge needle
    fill(255);
    ellipse(width/2,height/2,10,10);
    line(width/2,height/2,cos(0)+110,sin(0)+110);
    
    // speeds in multiples of 10
    for (int multiple=0; multiple<=MAX_SPEED; multiple +=10){
      pushMatrix();
      textSize(18);
      float multiAngle = map(multiple,0,MAX_SPEED,(PI-QUARTER_PI),(TWO_PI+QUARTER_PI));
      //println("multiAngle = " + multiAngle);
      translate(width/2-10+80*cos(multiAngle),height/2+80*sin(multiAngle));
      text(str(multiple),0,0);
      popMatrix();
    }
    
    
    //for (int multiple=0; multiple<=MAX_SPEED; multiple +=10){
    //  textSize(18);
    //  float multiAngle = map(multiple,0,MAX_SPEED,(PI-QUARTER_PI),(TWO_PI+QUARTER_PI));
    //  //println("multiAngle = " + multiAngle);
    //  text(str(multiple),width/2-10+80*cos(multiAngle), height/2+80*sin(multiAngle));
    //}  
  }
  
  float moveNeedle(){
    // temporary input using the seconds from time
    float s = map(second(), 0, 60, 0, TWO_PI);
    return s;
  }
}