class Speedometer{
  int MAX_SPEED; 

  Speedometer(){
    MAX_SPEED = 80;

  }
  void displaySM(){
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
      line(-10,10,0,0);  // division lines
      popMatrix();
    }


    // gauge
    fill(255);
    ellipse(width/2,height/2,10,10);
    strokeWeight(1);
    
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
  }
  
  void moveNeedle(float _speed){
    // temporary input using the seconds from time
    strokeWeight(3);
    stroke(250,250,0);
    float ang = map(_speed, 0, 80, (PI-QUARTER_PI),(TWO_PI+QUARTER_PI));
    line(width/2,height/2,cos(ang)*100+width/2,sin(ang)*100+height/2);
  }
}