class Ball {
 //declaring all information (fields) contained within the Ball class
  PVector loc, vel;
  float diam;
  color c;

//this is a constructor. you can have more than one constructor for a given class
  Ball() {
    diam = 200;
    loc = new PVector(random(diam, width-diam), random(diam, height-diam));
    c = color(random(255), random(50), random(100, 255));
    vel= PVector.random2D();
    vel.mult(5);
  }
 Ball(float tDiam){//new constructor 
   diam=tDiam;
   loc = new PVector(random(diam, width-diam), random(diam, height-diam));
    c = color(random(255), random(50), random(100, 255));
    vel= PVector.random2D();
    vel.mult(5);
 }

//after declaring fields and setting up constructors, you can define your methods
  void display() {
    fill(c);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }

void move(){//balls move
  loc.add(vel);
}

void bounce(){//balls bounce 
  if(loc.x+diam/2>width||loc.x-diam/2<0){
    vel.x=-vel.x;
  }
  
  if(loc.y+diam/2>height||loc.y-diam/2<0){
    vel.y=-vel.y;
  }
}
}