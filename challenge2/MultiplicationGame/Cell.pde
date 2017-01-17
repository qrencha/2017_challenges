class Cell {

  int cellN; // cell Number
  int cellS; // cell Side length
  int cellC; // cell Color
  int x;     // x coordinate of top-right corner
  int y;     // y coordinate of top-right corner

  Cell(int cellN_, int cellS_, int cellC_, int x_, int y_) {
    cellN = cellN_;
    cellS = cellS_;
    cellC = cellC_;
    x = x_;
    y = y_;
  }

  void displayCell() {
    stroke(0);
    fill(10,10,cellC);
    rect(x, y, cellS, cellS);   // cell rectangle
    fill(255);
    text(String.valueOf(cellN), x+cellS/2-10, y+cellS/2+5);   // cell number
  }
  
  void shineCell() {
    stroke(0);
    fill(200,200,cellC);
    rect(x, y, cellS, cellS);   // cell rectangle
    fill(55);
    textSize(20);
    text(String.valueOf(cellN), x+cellS/2-10, y+cellS/2+5);   // cell number
  }
  
  void noShineCell() {
    stroke(0);
    fill(200,200,cellC);
    rect(x, y, cellS, cellS);   // cell rectangle
    //fill(55);
    //textSize(20);
    //text(String.valueOf(cellN), x+cellS/2-10, y+cellS/2+5);   // cell number
  }
}  