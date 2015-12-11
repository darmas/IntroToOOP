Ball b;                //declare a new ball called b
Ball c;

void setup() {
  size(800,800);
  b = new Ball(25);    //initialize b as a new object of the Ball class
  c= new Ball(20);//now you can choose the diameter
}

void draw() {
  background(0);
  b.display();         //call b's display() method
  c.display();// a new ball displays 
  b.move();// the first ball moves
  c.move();//the second ball moves
  b.bounce();//the first ball bounces
  c.bounce();//the second ball bounces
}