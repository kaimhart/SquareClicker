Square[] squares;

void setup() {
  size(1280, 720);
  squares = new Square[10];
  for (int i = 0; i < squares.length; i++) {
    int loc = (i+1)*50;
    squares[i] = new Square(loc, 25);
  }
}

void draw() {
  background(50);
  for(int i =0; i < squares.length; i++) {
    squares[i].show();
  }
}

void mousePressed() {
  for(int i =0; i < squares.length; i++) {
    if (squares[i].isClicked()) {
      squares[i].changeColor();
    }
  }
}