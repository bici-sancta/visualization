void draw_frame_face()
{
  
  //faces
  pushMatrix();
  scale(.4);
  //ONE
  if( millis() % 4000 < 1000 )
  {image(one1, width/4, 100);
    
  }
   else if( millis() % 4000 < 2000 )
  {
    image(one2, width/4, 100);

  }
    else if( millis() % 4000 < 3000 )
    {image(one3, width/4, 100);

    }
    else 
    {image(one4, width/4, 100);
    
   
    }
 // TWO
  if( millis() % 4000 < 1000 )
  { image(two1, 1500, 100);
  }
   else if( millis() % 4000 < 2000 )
  {
    image(two2, 1500, 100);
  }
    else if( millis() % 4000 < 3000 )
    {image(two3, 1500, 100);
    }
    else 
    {image(two4, 1500, 100);
    }
  if( millis() % 4000 < 1000 )
  {
  image(nine1, width/4, 1000);
  }
   else if( millis() % 4000 < 2000 )
  {
    image(nine2, width/4, 1000);
  }
    else if( millis() % 4000 < 3000 )
    {image(nine3, width/4, 1000);
    }
    else
    {image(nine4, width/4, 1000);
    }
  if( millis() % 4000 < 1000 )
  {
  image(ten1, 1500, 1000);
   image(frames, 0,0);
  }
   else if( millis() % 4000 < 2000 )
  {
    image(ten2, 1500, 1000);
     image(frames, 0,0);
  }
    else if( millis() % 4000 < 3000 )
    {image(ten3, 1500, 1000);
     image(frames, 0,0);
    }
    else
    {image(ten4, 1500, 1000);
     image(frames, 0,0);
    }
    
  //frames

  popMatrix();
  
}