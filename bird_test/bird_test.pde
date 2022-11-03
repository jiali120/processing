

PImage wing,body;

void setup()
{
 wing = loadImage("wing1.png");
 body = loadImage("body.png");
  size(1000,1000);
  
}
void draw()
{
  background(255);

 
}


class bird{
  
  bird(){
  }   
 void display()
 {
 pushMatrix();
 translate(mouseX,mouseY);
 scale(0.25);
 image(body,0,0);
 pushMatrix();
 translate(body.width/3,80);
 scale(1,sin(radians(frameCount*8)));
 image(wing,0,0);
 popMatrix();
 
 popMatrix();
    
  }
}
  
