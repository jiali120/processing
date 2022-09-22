import processing.pdf.*;
//13*19inch  300api photoshop change the picture size
void setup(){
  size(900, 900);
  
  //beginRecord(PDF,"filename.pdf");
  
  background(255);
  stroke(0,40);
  noFill(); 
}


void draw(){
  stroke(0,50);
  pushMatrix();
  translate(mouseX+random(-50, 50), mouseY+random(-50,50));
  rotate(random(TWO_PI));
  rectMode(CENTER);
  fill(random(255),random(255),random(255),30);
  rect(0,0,random(10,100),random(10,100),10);
  popMatrix();
  
  //if(frameCount>=300){
    //endRecord();
    //exit();
  //}
  
}

void mousePressed(){
  beginRecord(PDF,"thing.pdf");
  background(255);
}
void mouseReleased(){
  endRecord();
  exit();
}
