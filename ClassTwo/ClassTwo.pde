//
void setup(){
  size(900, 900);
}

void draw(){
  background(0);
  //color-blue
  fill(0, 100, 200);
  
  rectMode(CENTER);
  //rotate(radians)
  //scale(x,y,z) for change the shape size
  //translate(x,y) - move.
  //x goes from 0 to width in increments of 50
  
  
  
  for(int i=0; i<1000; i++){
    circle(random(width), random(height), random(10,10));
  }
  
  // for loop make the background
  for(int x=0; x<=width; x+=25){
    
    //Nested for loop
    for(int y=0; y<= height; y+=25){
      
      pushMatrix();
      //no color
      noFill();
      
      //make color
      stroke(x*.25, y*.25, 0);
      
      translate(x, y);
      // change 15 to x means circle is different number from 0 to width
      circle(0,0,40);
      popMatrix();
    }
  
  }
  
  
  
  stroke(255);
  // begin a move of the matrix...
  pushMatrix();
  translate(mouseX,mouseY);
  
  // rotations are in radians - in processing... 
  // frameCount let the rect moved
  // matrix transormations - rotate
  // rotate(radians(mouseX));
  rotate(radians(frameCount) );
  scale(1.0);
  //rectigle
  rect(0, 0, 150, 150, 10);  
  popMatrix();
  
  
  
  //new move...
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(frameCount));
  scale(1); 
  triangle(0, -200, 100, 100, -100, 100);
  popMatrix();
  
  
  //puts things back.
 

}
