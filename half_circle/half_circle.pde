  // for loop make the background
  for(int x=0; x<=width; x+=25){
    
    //Nested for loop
    for(int y=0; y<= height; y+=25){
      
      pushMatrix();
      
      translate(x, y);
      // change 15 to x means circle is different number from 0 to width
      circle(0,0,40);
      popMatrix();
    }
  
  }
