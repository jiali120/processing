import processing.pdf.*;

// Jia Li 
// Project 2
// 09/27/2022

PImage myPic;

void setup(){ 
  size(900,900); 
  // load my picture
  myPic = loadImage("jia.jpg");
  // set the picture size
  myPic.resize(900,900); 
}

void draw(){
  float rectNum=mouseX/10;
  float rectSize = width/rectNum;  
  translate(rectSize/2, rectSize/2);
  background(255);
  rectMode(CENTER);
  pushMatrix();
  
  // using for loop fill the screen with rectangles/cube
  for(int i=0; i<rectNum; i++){  
    for(int j=0; j<rectNum; j++){
      
      // let the rectangles color match pic colors
      color matchColor = myPic.get(int(i*rectSize),int(j*rectSize));
      float diam = brightness(matchColor);
      diam = map(diam,0,255,0.5,1.0);
      fill(matchColor);
      noStroke(); 
      //pushMatrix();
      scale(1);
      // move all rectangles to center
      rectMode(CENTER);
      // set rectangles
      rect(i*rectSize, j*rectSize, rectSize*diam, rectSize*diam, rectSize*diam);
      //popMatrix();
    }
   // popMatrix();
  }
  popMatrix();
   //image(myPic,0,0);
  
}

// print pic to PDF file
void mousePressed(){
  beginRecord(PDF,"thing.pdf");
  background(255);
}
void mouseReleased(){
  endRecord();
  exit();
}
