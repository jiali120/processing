import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

PImage base;
PImage wing, body;
Bird bird1, bird2, bird3;

Minim minim;
AudioPlayer player;


float theta;
float l;  
int num=5; 
int frames = 1300;  
Layer[] layers = new Layer[num];  

int bgx, bgy;

class Bird{
  float x, y;
  float wingSpead;
  
  Bird(){
    x=random(width);
    y=random(height/3);
    wingSpead=random(0.2, 5.0);
  }
  
  void updateBird(){
    x+=2;
    if(x>width){
      x=0;
    }
  }
  
  void displayBird(){
   pushMatrix();
   translate(x,y);
   scale(0.15);
   image(body,0,0);
   pushMatrix();
   translate(body.width/3,80);
   scale(1,sin(radians(frameCount*wingSpead)));
   image(wing,0,0);
   popMatrix();
   popMatrix();
    
  }

}



void setup() {  
  
  size(1200, 900);  
  
   // noStroke();
   // fill(128,40,0,0);
   // circle(255,255,0);
  
  // add the bird sound and loop the music
  minim = new Minim(this);
  player= minim.loadFile("1.mp3"); 
  player.loop();
  
  wing = loadImage("wing1.png");
  body = loadImage("body.png");
  
  bird1=new Bird();
  bird2=new Bird();
  bird3=new Bird();
  
  //reset the image
  base = loadImage("11.png");
  base.resize(1300, 500);
  base.loadPixels();
  
  frameRate(20);
  
  //how many layers mountain there have
  l = height/num;  
  for (int i=0; i<num; i++) {  
    layers[i] = new Layer(i*l, random(300), i+1);
  }
}  

void draw() { 
  
  // #4A14C1
  // background(#D7F6FA);  
  //loadPixels();
  
  //display image
  image(base, bgx, bgy);
  image(base, bgx+base.width, bgy);
  bgx=bgx-4;
  if(bgx<-base.width){
    bgx=0;
  } 
  
  //3 birds
  bird1.updateBird();
  bird1.displayBird();
  
  bird2.updateBird();
  bird2.displayBird();
  
  bird3.updateBird();
  bird3.displayBird();
   
    
  for (int i=0; i<layers.length; i++) { 
    //change the mountain's color
    color monCol = lerpColor(#6A7386, #ffffff, 0.7/num*i);  
    fill(monCol);  
    layers[i].display();
  }  
  //mountains move
  theta += TWO_PI/frames;  
  
  //player = new AudioPlayer(this, "synth1.wav");
  // player.play();
  //player.loop();

  //sun's random color
  stroke(random(255),random(255),random(255));
  //sun's position  
  translate(-width/5, -height / 20);
    
  // change circle's shape ----- the sun's shape
  float bins=300;
  for(int i=0;i<bins -1;i++) {
    strokeWeight(2);
    float r1 =  player.left.get(i);
    float r2 =  player.left.get(i+1);
    float R1 =  player.right.get(i);
    float R2 = 200 + 150 *  player.right.get(i+1);
    float rad1 = 2 * PI * (i/bins);
    float rad2 = 2 * PI * ((i + 1) / bins);
    //float Rad1 = 2 * PI * (i / bins);
    float Rad1 = 2 * PI * (bins);
    float Rad2 = 2 * PI * ((i + 1) / bins);
    line(r1 * cos(rad1)+500, r1 * sin(rad1)+180, r2 * cos(rad2)+500, r2 * sin(rad2)+180);
    line(R1 * cos(Rad1)+500, R1 * sin(Rad1)+180, R2 * cos(Rad2)+500, R2 * sin(Rad2)+180); 
  }
    noFill();
    
}  


class Layer {  

  float start, noize, speed;  
  float yOff, yOff2;  

  Layer(float start1, float noize1, float speed1) {  
    start = start1;  
    noize = noize1;  
    speed = speed1;
  }  

  void display() {  
    //display mountains
    yOff = yOff2;  
    noStroke();  
    for (int x=0; x<width; x+=1) {  
      float y = start + noise(noize+sin(yOff)*3)*l*3.5;  
      rect(x, height, 1, -height+y);  
      yOff+=TWO_PI/(width);
      
    }  
    
    // mountains move speed
    yOff2=theta*speed;
    
  }
}  
