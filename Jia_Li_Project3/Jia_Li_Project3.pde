// Jia Li
// Project 3
// I made it because time Passed quickly.
float angleRotate = 0.0;
float theta=0;

void setup() {
  //size(900, 900);
  fullScreen(P2D);
  //frameRate(60);
  //surface.setLocation(-3840, 0);
  //surface.setSize(3840, 1200);
  background(0);
  theta=random(TWO_PI);
} 

void draw() {
  //background(0);
  strokeWeight(1);
  //set the center color
  //stroke(degrees(abs(theta)));
  stroke(#F9FAD4);
  
  //setting the pointer
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(angleRotate));
  
  line(0, 0, 800, 0);
  //let the pointer rotate
  angleRotate += 0.25;
  popMatrix();
  
  pushMatrix();
  //point color
  stroke(255,0, 0);
  //the dot size
  translate(width/2, height/2);
  strokeWeight(15); 
  //dot position
  point(0, 0);
  popMatrix();
  
 //random the numbers, and size
  for(int i=0; i<3; i++){
    int x= int (random(width));
    int y=int (random(height));
    //random the white grey and black color
    fill(sin(theta),random(0),random(0),80);
    //only random 12 numbers because on the clock only have 12 numbers
    int num = int(random(12));
    //size is from 3 to 60
    textSize(random(5,160));
    text(num, x, y);   
  }    
}
