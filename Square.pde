class Square {
  float x;
  float y;
  float size;
  color c;
  
  Square(float x, float y) {
    this.x = x;
    this.y = y;
    size = 50;
    c = color(255, 0, 0);
  }
  
  void show() {
    fill(c);
    rectMode(CENTER);
    rect(x, y, size, size);
  }
  
  boolean isClicked() {
    if (mouseX >= x - size/2 && mouseX <= x + size/2) {
      if (mouseY >= y - size/2 && mouseY <= y + size/2) {
        return true;
      }
    }
    return false;
  }
  
  void changeColor() {
    this.c = color(random(255), random(255),random(255));
  }
}