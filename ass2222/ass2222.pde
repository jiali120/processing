
float v;

void setup(){
  size(500, 500, P2D);
  //let pic more dark in some parts
  noiseSeed(2);
}

void draw(){
  for(int x=0; x<=width; x++){
    for(int y=0; y<=height; y++){
      //*255 let the background change 
      //v= noise(x,y)*255;
      //frameCount let the pic a little move
      v= noise(x*0.01, y*0.01, frameCount*0.02)*255;
      stroke(v);
      point(x,y);
    }
  }
}
