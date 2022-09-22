
// variables..
// global variables are readable by anything in the sketch
//derclared outside of any function, so global in nature
float x;
float y;
float seed = 0;

void setup(){
  size(900, 900);
  x=width/2;
  y=height/2;
}

void draw(){
  background(0);
  noStroke();
  
  fill(255);
  //random(255) let the circle blinking
  //fill(random(255));
  
  //using x++ let the circle move start center to right
  //x++;
  
  //let cricle random move
  //x=random(0,width);
  //y=random(0,height);
  
  //random move in 10 to -10 space
  //x+=random(-10,10);
 // y+=random(-10,10);
  
  //x=random(0,width/2);
  //y=random(0,height/2);
  
  
  //noise-'randomnes' with coherence...
  //noise arguments are 'seeds'
  //as we change the seed number, the results from 
  //nosie vary 
  //'frequency'
  //amplitude...
 // noise always returns a number between 0 to 1
 
 //start moving circle
 seed+=0.01;
  x= noise(seed)*width;
  //println(x);
  y= noise(seed-125)*height;
  
  pushMatrix();
  translate(x,y);
  circle(0,0,40);
  popMatrix();

}
