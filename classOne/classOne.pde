// comment
// function. an instruction or set of instructions to be interpreted
// PROCESSING generall requires two functions at minimum work.
// setup and draw.
// container - () {}

void setup(){
  
  // function name - (then ARFUMENTS or PARAMETERS) - then; size(int, int)
  size(500, 500);
  //0 means black, 127 means grey
  background(0);
  
  //frameRate(144)
  //noLoop();
  
 
 
} // End of setup.

//DRAW Function.
// draws to the screen - default of 60 fps
// loops 
void draw(){
    //late 1000sec to display white 
    // delay(1000);
    
    //when we delat background 255 the lines have a lot when i used mouse to move
 // background(255);
  
  // style of the mark.
  // set the style before drawing the thing.
  point(200, 200);
  // components of a color.
  // stroke (red, green, blue) no green, no blue, only red equal to 255 
  // stroke last numer is line's transparency
  stroke(255, 0, 0,20);

  line(100, 100, 450, 450);
  
  //change style and draw new line.
  stroke(0,200, 50);
    // set line's weight
  strokeWeight(10);
  line(400, 10, 10, 400);
  
  // the last number 60 is set transparency. 
  fill(0, 100, 10, 60);
  // circle
  circle(250,250,250);
  strokeWeight(1);
  ellipse(100,100,300,10);
  
  
  //rectangle
  // set it to center part
  rectMode(CENTER);
  // the last number 20 set the angle to round
  rect(250, 250, 100 ,100, 20);
  
  // x and y position - width and a height -arc start/stop angle
  arc(40, 400, 100, 100, radians(12), radians(63));
  //arc(40, 400, 100, 100, 0, PI/2);
  //rotation in processing is in radians by default...
  
  //make a polygonal shape...
  noFill();
  beginShape();
  vertex(33, 33);
    vertex(300, 50);
    vertex(400, 200);
    vertex(300, 450);
    vertex(250, 250);
    endShape(CLOSE);
    
  // bezier(40, 120,   60, 0,  300, 550,    400, 400);
   //mouse can control the line
    bezier(40, 120,   mouseX, mouseY,  300, 550,    400, 400);
  
}
