class Minion {
  int minionX;
  int minionY;
  int minionSpeed;
  int bodyR = 255;
  int bodyG = 255;
  int bodyB = 0;
  int eyeH = 8;
  int mouthW = 20;
  int mouthH = 1;
  int hairL = 40;

  // Minion constructor
  Minion(int tempX, int tempY, int tempSpeed) {
    minionX = tempX;
    minionY = tempY;
    minionSpeed = tempSpeed;
  }

  // Method to display or draw Minion
  void drawMinion() {

    //Body-head
    fill(bodyR, bodyG, bodyB);
    rect(minionX, minionY, 40, 70, 7);

    //Hair
    fill(0);
    line(minionX-6, minionY-35, minionX-6, minionY-hairL);
    line(minionX, minionY-35, minionX, minionY-hairL);
    line(minionX+6, minionY-35, minionX+6, minionY-hairL);

    //Glass(es) band
    fill(0);
    rect(minionX, minionY-15, 40, 5);

    //Eye(s)
    fill(255);
    //One eye
    ellipse(minionX, minionY-15, 20, 20);
    fill(0);
    ellipse(minionX, minionY-15, 8, eyeH);
    noFill();

    //Mouth
    fill(0);
    rect(minionX, minionY+8, mouthW, mouthH);

    //Legs
    fill(0, 200, 255);
    rect(minionX-6, minionY+40, 5, 10);
    rect(minionX+6, minionY+40, 5, 10);


    //Overalls
    rect(minionX, minionY+30, 40, 10, 0, 0, 7, 7);
    quad(minionX-20, minionY+10, minionX-20, minionY+15, minionX-10, minionY+25, minionX-5, minionY+25);
    quad(minionX+20, minionY+10, minionX+20, minionY+15, minionX+10, minionY+25, minionX+5, minionY+25);

    //Arms
    fill(bodyR, bodyG, bodyB);
    rect(minionX-25, minionY+20, 10, 4);
    rect(minionX+25, minionY+20, 10, 4);

    //Hands
    fill(0);
    rect(minionX-35, minionY+20, 8, 8, 2, 2, 2, 2);
    rect(minionX+35, minionY+20, 8, 8, 2, 2, 2, 2);
    //Thumbs
    rect(minionX-32, minionY+16, 3, 5);
    rect(minionX+32, minionY+16, 3, 5);


    //Shoes
    fill(0);
    rect(minionX-8, minionY+45, 10, 4, 2, 2, 2, 2);
    rect(minionX+8, minionY+45, 10, 4, 2, 2, 2, 2);
  }

  // Method to move Minion on screen
  void moveMinion() {
    //Minion Movement
    minionX = minionX + minionSpeed;
    //println("tempX = "+tempX+" and width = "+width);
    if ((minionX > width) || (minionX < 0)) {
      // If the object reaches either edge, multiply speed by -1 to turn it around.
      minionSpeed = minionSpeed * -1;
    }
  }

  void change(boolean localpress) {
    //Change Minion's color, from yellow to blue and viceverse
    if (localpress) {
      bodyR = 0; 
      bodyG = 0; 
      bodyB=255;
      eyeH = 1;
      mouthW = 10; 
      mouthH = 10;
      hairL = 80;
    }
    else {
      bodyR = 255; 
      bodyG = 255; 
      bodyB = 0;
      eyeH = 8;
      mouthW = 20; 
      mouthH = 1;
      hairL = 40;
    }
  }
}

