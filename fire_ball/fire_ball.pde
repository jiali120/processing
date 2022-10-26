//beginning of class definitiion
class Particle
{

  float x, y;
  float gravity;
  //velocity.
  float vx, vy;
  float diam;
  float drag;
 
  
  
  //constructor method (function)  ---> like setup in that it runs once.
  Particle()
  {
    x = width/2;
    y = height*0.75;
    vx = random(-2, 2);
    vy = random(-2, 2);
    diam = random(10, 200);
    gravity = -0.1;
     drag=random(0.93, 0.99);
  }
  //two more funciton - update - display   reset
  void update()
  {
    vy+=gravity;
    vx+= noise(x*0.02, y*0.02, frameCount*0.02)-0.5;
    if(repeling){repel();}
    if(attracting){attract();}
    vx*=drag;
    vy*=drag;
   
    x+=vx;
    y+=vy;
    if (y < -diam)
    {
      reset();
    }
  }
  
  void repel()  {
    float d = dist(x,y,mouseX,mouseY);
    //if(d < 100)
    //{
     
     float dx = x-mouseX;
     float dy = y-mouseY;
     //dividing this new force by the distance to the mouse.
     dx/=d;
     dy/=d;
     //add an opposing force to the velocity of the object
     vx+=dx;
     vy+=dy;
     
    }
    
  void attract()  {
    float d = dist(x,y,mouseX,mouseY);
    //if(d < 100)
    //{
     
     float dx = mouseX-x;
     float dy = mouseY-y;
     //dividing this new force by the distance to the mouse.
     dx/=d;
     dy/=d;
     //add an opposing force to the velocity of the object
     vx+=dx;
     vy+=dy;
     
    
  }
 
 
  void reset()
  {
    x = width/2;
    y = height*0.75;
    vx = random(-2, 2);
    vy = random(-2, 2);
    diam = random(10, 200);
  }


  void display()
  {
    noStroke();
    fill(128,40,0,30);
    circle(x, y, diam);
  }
  }
//end of class definition..


float a;
//declare a particle 'instance'

//multitudes of particles - 'array' or a 'list - arraylist'
//declare the list
ArrayList<Particle> particles;

boolean attracting=false;
boolean repeling = false;


void setup()
{
  fullScreen(P2D);
  frameRate(60);
  //construct the list, then construct the objects in the list.

  particles = new ArrayList<Particle>();
  //construct the particle insance
  //add an object to our list...
  particles.add(new Particle());
  //lists have a size()



  //arrays have a length
  println(particles.size());
}

void draw()
{
  background(0);
  blendMode(ADD);
  if(particles.size()<1200)
  {
  particles.add(new Particle());
  }
  //go into the list and get the 'zero-ith' index and update-display...

  for (int i = 0; i < particles.size(); i++)
  {
    particles.get(i).update();
    particles.get(i).display();
  }
 
    println(particles.size());
  //run the update and display methods for the particle instance 'p'
}



void keyReleased(){
if(key=='s'){
attracting =!attracting;
}

if(key=='s'){
repeling =!repeling;
}
}
