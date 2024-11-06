//comment

class BaseObstacle {
  float x, y;
  float size;
  
  BaseObstacle(float x, float y, float size) {
    this.x = x;
    this.y = y;
    this.size = size;
  }
  
  void display() {

  }
}

class Obstacle extends BaseObstacle {
  
  Obstacle(float x, float y, float size) {
    super(x, y, size);
  }
  
  void display() {
    fill(255, 0, 0);
    rect(x, y, size, size);
  }
}

class Obstacle2 extends BaseObstacle {  
  Obstacle2(float x, float y, float size) {
    super(x, y, size);
  }
 
  void display() {
    fill(0, 0, 255);
    rect(x, y, size, size);
  }
}