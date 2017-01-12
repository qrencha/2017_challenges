class Odometer{

  Odometer(){
    stroke(255);
    noFill();
    rectMode(CENTER);
    rect(width/2,height/2+60,60,20);
    text("00000",width/2-28, height/2+68);

  }
}