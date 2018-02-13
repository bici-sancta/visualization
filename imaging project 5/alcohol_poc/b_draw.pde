void draw ()
{
background(0);
  counter();
   if ((iday>-500)&&(iday<0))
{
  //Clear the background with 21 opacity
  background(0, 21);
  stroke(100);
  fill(0);
  bezier(width/2, 620, 150, 580, 250, 182, 325, 0);
  bezier(width/2, 620, 1100, 580, 1000, 182, 925, 0);
  ellipse(width/2, 0, 600, 50);
  fill(100, 100);
  noStroke();
  quad(582, 732, 505, 600, 745, 600, 665, 732);
  rect(582, 732, 83, 100);
  noFill();

 
  //If the mouse is pressed
  if( millis() % 4000 < 2000 ){ 
    //Create a new Wave
    Wave w = new Wave();
    //and Add it to the ArrayList
    waves.add(w);
  }
 
  //Run through all the waves
  for(int i = 0; i < waves.size(); i ++) {
    //Run the Wave methods
    waves.get(i).update();
    waves.get(i).display();
   
    //Check to see if the current wave has gone all the way out
    if(waves.get(i).dead()) {
      //If so, delete it
      waves.remove(i);
    }
  }
  fill(255);
  typewriteText();
}

///BEGIN PIECE
else if(iday>0)
{

  pushMatrix();
  image(bar2,0, 0);
  popMatrix();
  draw_bar();

   draw_wine();
   
  draw_frame_face();

  mouse_hover();
  draw_pitcher();
}
  
  //////save("test.jpg");
  
}