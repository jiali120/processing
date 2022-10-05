

void setup(){
  //p2d let the model move fast, if no p2d the model will move slower.
  //fullScreen(P2D);
  size(1400, 1400);
}

void draw(){
  background(255);
  
  //marking time with 't'
  //if want the cicle move fast can let frameCount*15
  float t = frameCount;
  float t2 = -frameCount*2.75;
  
  pushMatrix();
  translate(width/2, height/2);
  
  
  pushMatrix();
  //repeat the circles in a circular pattern...
  for(int r = 0; r < 360; r+=30){    
    float rx = cos(radians(r-t2))*(height/4);
    float ry = sin(radians(r-t2))*(height/4);
    pushMatrix();
    translate(rx, ry);
    //Concentric circles...
    for(int d = 400; d>=40; d-=20){
      //move these concentric circles... using sin
      //sin is from -1 to 1
      //t-d let the let the circle become 3D 
      //sin let the circle move from left to right
      //cos let the circle move from top to bottom
      float cx = sin(radians(t-(d*0.2)))*100;
      float cy = cos(radians(t-(d*0.2)))*100;
      pushMatrix();
      translate(cx, cy);
      
      float red = sin(radians(t*2-(d*2.5)));
      //-1 to 1 ---> 0 to 255
      red = map(red, -1, 1, 0, 255);
      fill(red, 0, 0, 130);
      //stroke let color tone become light/ transparent
      stroke(255, 100);
      circle(0, 0, d);
      popMatrix();
    }  
    popMatrix();
  }
  
  popMatrix();
  popMatrix();
  
}
