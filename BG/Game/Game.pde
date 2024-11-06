 /*
  Assignment: OOP EXERCISE
  Student: Ben Glickstein
  Pasadena City College, Fall 2024
  Course Name: DMA60 Creative Coding
  Prof. George McKinney
  Project Description: This program .... (describe it!)
  Last Modified: November 6, 20XX
  */

Character player;
Obstacle obstacle;
Obstacle2 obstacle2;

void setup() {
  size(400, 400);
  player = new Character(50, height / 2, 30);
  obstacle = new Obstacle(width /2, height, 40);
  obstacle2 = new Obstacle2(width /2, height / 3, 40);
}

void draw() {
  background(255);

  if (keyPressed) {
    if (key == 'a') {
      player.move(-2, 0);
    } else if (key == 'd') {
      player.move(2, 0);
    } else if (key == 'w') {
      player.move(0, -2);
    } else if (key == 's') {
      player.move(0, 2);
    }

  }

  obstacle.y += 1;

  player.display();
  obstacle.display();
  obstacle2.display();

  if (player.collidesWith(obstacle) || player.collidesWith(obstacle2)) {
    textSize(32);
    fill(0);
    text("Game Over!", width / 2 - 100, height / 2);
  }
}


