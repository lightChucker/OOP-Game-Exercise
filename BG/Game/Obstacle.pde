//comment

class BaseObstacle {
  float x, y;
  float size;
  float speed; 

  BaseObstacle(float x, float y, float size, float speed) {
    this.x = x;
    this.y = y;
    this.size = size;
    this.speed = speed;
  }
  
  void display() {
  }

  void move() {
    y+= speed;

    if (y > height){
      respawn();
    }
  }
  
  void respawn() {
    y = -size;
    x = random(width-size);
    speed += 0.1;
  }


}

class Obstacle extends BaseObstacle {
  
  Obstacle(float x, float y, float size, float speed) {
    super(x, y, size, speed);
  }
  
  void display() {
    fill(255, 0, 0);
    rect(x, y, size, size);
  }
}

class Obstacle2 extends BaseObstacle {  
  Obstacle2(float x, float y, float size, float speed) {
    super(x, y, size, speed);
  }
 
  void display() {
    fill(0, 0, 255);
    rect(x, y, size, size);
  }
}