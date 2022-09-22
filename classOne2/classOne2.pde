// iteration...

void setup(){
  
  fullScreen();
  //no loop to stop the loop
  //noLoop();

}

void draw(){
  
  background(0);
  
 // circle(width/2, height/2, 150);
 // circle(width*0.75, height/2, 150);
 //interation - for loop...
 
 // create a variable called 'i' = seting it to 0 as the initial state.
 //conidtion is i<500?
 //add to i and do the commands. increment i by 1
 for(int i=0; i<500; i++){
   
   //fill color to the circles. if you want to make black,grey and white, only write : fill(random(255))
   fill(random(255), random(255), random(255));
   //circle(random(width), random(height), 100);
   circle(random(width), random(height), random(10,30));
  }  
  filter(BLUR, 20);  
}
