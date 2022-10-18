// Jia Li
// Project 3
// I made it because time Passed quickly.
float angleRotate = 0;
float speed = 0.3;
float circlesize = 500;
float dot = 10;


void setup() {
  size(900, 900);
  //fullScreen(P2D);
  //frameRate(60);
  //surface.setLocation(-3840, 0);
  //surface.setSize(3840, 1200);
  background(0);
  stroke(#F9FAD4);
} 

void draw() {
  
   if(angleRotate>360){
     stroke(random(255),random(255),random(255));
     angleRotate=0;
     speed = random(0.3, 3);
     circlesize = random(10, 500);
   }
 
  //setting the pointer
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(angleRotate));
  line(0, 0, circlesize, 0);
  //let the pointer rotate
  angleRotate += speed;
  popMatrix();
  
  pushMatrix();
  //the dot size
  translate(width/2, height/2);
  pushStyle();
  strokeWeight(5); 
  //dot position
   //point(0, 0);
   circle(0,0,10);
   fill(random(255), random(255), random(255));
   popStyle();
   popMatrix();
    if(angleRotate>180){
     stroke(random(255),random(255),random(255),150);
     dot = random(1, 10);
   }
  
  
 //random the numbers, and size
  for(int i=0; i<3; i++){
    int x= int (random(width));
    int y=int (random(height));
    //random the white grey and black color
    fill(sin(0), 0, 0,80);
    //only random 12 numbers because on the clock only have 12 numbers
    int num = int(random(12));
    //size is from 3 to 60
    textSize(random(5,160));
    text(num, x, y);   
  }    
}
