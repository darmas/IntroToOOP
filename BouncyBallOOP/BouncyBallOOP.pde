int count=100;//number of balls
Ball[]balls= new Ball[count];//created array 



void setup() {
  size(800, 800);
  for (int i=0; i<count; i++) {
    balls[i]=new Ball(20);//diameter of balls
  }
}

void draw() {
  background(0);
  for (int i=0; i<count; i++){//100 balls will move and bounce at the same time
  balls[i].display();         //call b's display() method
  balls[i].move();//the second ball moves
  balls[i].bounce();//the first ball bounces
}
}