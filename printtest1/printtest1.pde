import processing.pdf.*;

//global variables...
float x, y;
float freq=0.005;
float amp = 18;
//float nSeed;

void setup(){
 // nSeed = int(random(10000));
 // noiseSeed(nSeed);
 // println(nSeed);
 // size(1400,1000,PDF,"test.pdf");
  size(1400,1000);
  
  x = width/2;
  y= height/2;
  
  noLoop();
  
}

void draw(){
  //setting
  background(255);
  noFill();
  stroke(0,90);
  
  
  for(int j =0; j<=width;j+=10){
    for(int k=400; k<=600; k+=10){
      //set a new beginning pt, for each line
      x=j;
      //y=height/2;
      y=k;
      beginShape();
      vertex(x,y);
      
      for(int i = 0; i<100; i++){
        
        //one line dispalay on the background.
        //vertex(x+i, y+random(-50,50)); zigzag lines
        //vertex(x+i, y+(sin(radians(i)*100)));
        //offset x and y by noise. add y*freq and x*freq, the line become cure line
        // x+=(noise(i*freq, y*freq, frameCount*freq)-0.5) *amp;
        x+=(noise(i*freq, y*freq, x*freq)-0.5) *amp;
        y+=(noise(i*freq, x*freq)-0.5) *amp;
        vertex(x, y);
        }
    
    
        endShape();
     }
  }
  //change to pdf file have to write exit()
  //exit();
}
