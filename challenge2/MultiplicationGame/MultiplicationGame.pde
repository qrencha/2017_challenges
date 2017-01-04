int cellSide = 50; // cell side length
int numRowCol =11; // number of rows or columns
int lastCell = numRowCol*numRowCol;
int bgWidth = cellSide*numRowCol;
int bgHeight = bgWidth+50;

// ********************************
// O B J E C T S
// ********************************
Board myBoard;  // create my board

void setup() {
  frameRate(5); // frameRate 5 to 10 are slow enough to see the movement
  size(bgWidth, bgHeight);
  myBoard = new Board();         // Construct my Board

  // Initiate my Board, this includes layout, color and numbering
  myBoard.initiate();
}

void draw() {
  // Draw board every draw cycle
  myBoard.display();

}

void mousePressed() {
  println("Moused pressed");
  int fx = int(random(1,11));
  int fy = int(random(1,11));
  println(fx + "x" + fy);
  myBoard.shine(fx, fy);
  //winner = "no";
}


