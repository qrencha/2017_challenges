class Board {
  int cellColor;
  int num; // cell number
  boolean factorColor = false; // Cell color for factors only

  Cell[][] board = new Cell[numRowCol][numRowCol]; // an object of Cell's called board

  Board() {
  }

  void initiate() {
    textSize(16);
    for (int i = 0; i < board.length; i++) {
      for (int j = 0; j < board.length; j++) {
        if ((i==0) || (j==0)) {
          factorColor = true;
          num = i + j;
        }
        else {
          factorColor = false;
          num = i * j;
        }

        if (factorColor) {
          cellColor = 100;
        }
        else {
          cellColor = 210;
        }

        board[i][j] = new Cell(num, cellSide, cellColor, cellSide*j, i*50);
      }
    }
  }

  void display() {
    textSize(16);
    for (int i = 0; i < board.length; i++) {
      for (int j = 0; j < board.length; j++) {
        board[i][j].displayCell();
      }
    }
  }
  
  void shine(int fx, int fy) {
      textSize(16);
        board[fx][fy].shineCell();
  }
  
  void displayFeedBack(String fB){
    fill(0);
    rect(bgWidth/2-2*cellSide,bgHeight-cellSide+4,270,40); // feedback square
    fill(255);
    textSize(18);
    text(fB,bgWidth/2-2*cellSide+8,bgHeight-cellSide/2+8 ); // show the feedBack
  }
}