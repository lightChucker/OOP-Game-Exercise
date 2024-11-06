//comment

class Character {
  float x, y;
  float size;
  
  Character(float x, float y, float size) {
    this.x = x;
    this.y = y;
    this.size = size;
  }
  
  void move(float xSpeed, float ySpeed) {
    x += xSpeed;
    y += ySpeed;
  }
  
  boolean collidesWith(BaseObstacle obstacle) {
    float distance = dist(x, y, obstacle.x, obstacle.y);
    return distance < (size + obstacle.size) / 2;
  }

  void display() {
    fill(0, 255, 0);
    ellipse(x, y, size, size);
  }
}

