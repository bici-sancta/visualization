void draw_pitcher()
{
  translate(7*width/8, height/4);
   /// millis is the timing delay in the sequence
  // what is MAP?
  
  if( millis() % 4000 < 1000 ){
    // translates have to be the origin of the thing
    translate(20,-20);
    // radians is the degree of motion, changing it slows the speed though
    // negative radians is counter clockwise
    rotate(map(millis()%1000,0,1000,0,radians(-80)));
    image(pitcher,-70,-30);

  } else if( millis() % 4000 < 2000 ){
    translate(20,-20);
    rotate(map(millis()%1000,0,1000,radians(-80),0));
    image(pitcher,-70,-30);
  } else if( millis() % 4000 < 3000 ){
    translate(-20,-20);
    // positive radians is clockwise
    rotate(map(millis()%1000,0,1000,0,radians(10)));
    image(pitcher,-30,-30);
  } else 
  {
    translate(-20,-20);
    rotate(map(millis()%1000,0,1000,radians(10),0));
    image(pitcher,-30,-30);
  }
  
  //GUIDE DOTS
  // red dot moves?
  
  //fill(255, 0, 0);
  //ellipse(20,-20, 20, 20);
  //fill(255, 255, 0);
  //ellipse(-30,-30,20,20);
  //fill(0,0, 255);
  //ellipse(-70,-30,20,20);
}