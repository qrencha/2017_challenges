int cellSide = 50; // cell side length
int numRowCol = 11; // number of rows or columns
int lastCell = numRowCol*numRowCol;
int bgWidth = cellSide*numRowCol;
int bgHeight = bgWidth+50;
int fx, fy, product;
boolean turn; // indicates if you are in a turn (true) or not (false)
String input1="";
String prodStr="";
String feedBack="";

void settings(){
  size(bgWidth, bgHeight);
}

Board myBoard;  // create myBoard object

void setup() {
  frameRate(5); // frameRate 5 to 10 are slow enough to see the movement
  myBoard = new Board();         // Construct my Board

  // Initiate my Board, this includes layout, color and numbering
  myBoard.initiate();
}

void draw() {
  // Draw board every draw cycle
  myBoard.display();
  if (turn){
    myBoard.shine(0,fy);
    myBoard.shine(fx,0);
    myBoard.shine(fx, fy);
  }

  myBoard.displayFeedBack(feedBack);

}

void mousePressed() {
  //println("Moused pressed");
  fx = int(random(1,11));
  fy = int(random(1,11));
  product = fx * fy;
  //println(fx + "x" + fy);
  //  myBoard.shine(0,fy);
  //  myBoard.shine(fx,0);
  //  myBoard.shine(fx, fy);
 feedBack = "key in the product + <enter>";
  turn = true;
  
  println("product is " + product);
}

void keyPressed(){
  if (keyCode != ENTER){
    input1 +=key;
  }
  else {
    println(int(input1));
    if(product == int(input1))
    {
      feedBack = "Good, mouse click for next";
      println("Good");
    }
    else
    {
      feedBack = "Wrong, mouse click for next";
      println("Wrong");
    }
    input1 = "";
  }
}