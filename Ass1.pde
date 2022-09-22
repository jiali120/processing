// Student Name: Jia Li
// Composition Through Code
// Art website: https://www.gracedegennaro.com/
// Art information: Emanation (Dusk, Night, Dawn), Walk the Line, Center for Maine Contemporary Art, Rockland, ME
// GRACE DEGENNARO
int Y_AXIS = 1;
color b1, c1;

void setup(){
  //set the backgroud size
  size(900, 900);
  
  // Set the backgroud color: red to orange
  b1 = color(#93091B);
  c1 = color(#CE6421);
  
  //noLoop();
}

void draw(){
  
  // Background color
  setGradient(0, 0, width, height, b1, c1, Y_AXIS);
  

  
  // Make a blue circle and move it to center
  fill(#2899C4);
  pushMatrix(); 
  translate(width/2, height/2);
  scale(1);
  circle(-1,-3,194);
  popMatrix();
  
  // Make a green cube and move it to center
  fill(#2B6C49);
  pushMatrix();
  translate(width/2, height/2);
  scale(1);
  noStroke();
  rect(-51, -51, 100, 100, 0);
  popMatrix();
  
  
  // Make a white circle and move it to center 
  fill(#FCFEFF);
  pushMatrix();
  translate(width/2, height/2);
  scale(1);
  circle(-1,0,35);
  popMatrix();
  
  // Make 6 lines of dots
  for(int i=0; i<180; i+=30){
     pushMatrix();
     translate(width/2, height/2);
     rotate(radians(i));
     for(int x=-405; x<= 400; x+=10){ 
        pushMatrix();
        translate(x, 0);
        scale(1); 
        circle(0,3,3);
        popMatrix();
      }  
     popMatrix();
   
  }
   
  
}

void setGradient(int x, int y, float w, float h, color c1, color b1, int axis ) {
  noFill();
  
  // Set the background from top to bottom gradient
  if (axis == Y_AXIS) {  
    for (int i = y; i <= y+h; i++) {
      float inter = map(i, y, y+h, 0, 1);
      color c = lerpColor(c1, b1, inter);
      stroke(c);
      line(x, i, x+w, i);
    }
  }  
}
