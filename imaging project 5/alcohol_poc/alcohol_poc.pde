void setup()
{
  size (1250, 800, P3D);
  background (255);
  noStroke();

// LOAD IMAGES

  frames = loadImage("frames.png");
  wine = loadImage("wine3.png");
  pitcher = loadImage("pitcher.png");
  bar = loadImage("barcropped.jpg");
  bar2 = loadImage("barcropped2.jpg");
  one1 =loadImage("one1.jpg");
  one2 =loadImage("one2.jpg");
  one3 =loadImage("one3.jpg");
  one4 =loadImage("one4.jpg");
  two1 =loadImage("two1.jpg");
  two2 =loadImage("two2.jpg");
  two3 =loadImage("two3.jpg");
  two4 =loadImage("two4.jpg");
  nine1 =loadImage("nine1.jpg");
  nine2 =loadImage("nine2.jpg");
  nine3 =loadImage("nine3.jpg");
  nine4 =loadImage("nine4.jpg");
  ten1 =loadImage("ten1.jpg");
  ten2 =loadImage("ten2.jpg");
  ten3 =loadImage("ten3.jpg");
  ten4 =loadImage("ten4.jpg");
  
  wine.resize(400, 600);
  

  
  bar3=loadImage("barcropped3.jpg");
  bar4=loadImage("barcropped4.jpg");
  bar5=loadImage("barcropped5.jpg");
  a=0;

///ONE 
  srcO = loadImage("one3.jpg"); 
  srcOO = loadImage("one4.jpg"); 
  
  srcO.resize(450, 450);
  srcOO.resize(450, 450);
  
  srcO.loadPixels();
  srcOO.loadPixels();
  

  
  for (int i = 0; i < ost.length; i++)
  {
      ost[i] = createImage(srcO.width, srcO.height, RGB);
  }
  
  ost9 = createImage(srcO.width, srcO.height, RGB);
  
  
  for (int i = 0; i < srcO.height; i++)
  {
    for (int j = 0; j < srcO.width; j++)
    {
        int k = srcO.width * i + j;
        
        float r1 = red(srcO.pixels[k]);
        float g1 = green(srcO.pixels[k]);
        float b1 = blue(srcO.pixels[k]);
        
        float r2 = red(srcOO.pixels[k]);
        float g2 = green(srcOO.pixels[k]);
        float b2 = blue(srcOO.pixels[k]);

        if(j < srcO.width/3)
        {
            ost9.pixels[k] = color(r2, g2, b2);
        } else if (j > 2 * srcO.width / 3)
        {
            ost9.pixels[k] = color(r1, g1, b1);;
        } else {
            float a = j - srcO.width/3;
            float b = 2 * srcO.width/3;
            float c = float(3) / float(srcO.width);
            
            float dred = (a*r1 + (b-j)*r2) * c;
            float dgrn = (a*g1 + (b-j)*g2) * c;
            float dblu = (a*b1 + (b-j)*b2) * c;
            
            ost9.pixels[k] = color(dred, dgrn, dblu);
        }
         
       for(int ipp = 0; ipp < ost.length; ipp++)
       {
           int ii = ost.length-ipp-1;
           int ij = ipp+1;
           int kk = ost.length;
      
           ost[ipp].pixels[k] = color( (ii*r1 + ij*r2)/kk, (ii*g1 + ij*g2)/kk, (ii*b1 + ij*b2)/kk );

       }
        
    }
  }
  for (int ipp = 0; ipp < ost.length; ipp++)
  {
      ost[ipp].updatePixels();
  } 

// TWO

  srcT = loadImage("two3.jpg"); 
  srcTT = loadImage("two4.jpg"); 
  
  srcT.resize(450, 450);
  srcTT.resize(450, 450);
  
  srcT.loadPixels();
  srcTT.loadPixels();
  

  
  for (int i = 0; i < tst.length; i++)
  {
      tst[i] = createImage(srcT.width, srcT.height, RGB);
  }
  
  tst9 = createImage(srcT.width, srcT.height, RGB);
  
  
  for (int i = 0; i < srcT.height; i++)
  {
    for (int j = 0; j < srcT.width; j++)
    {
        int k = srcT.width * i + j;
        
        float r1 = red(srcT.pixels[k]);
        float g1 = green(srcT.pixels[k]);
        float b1 = blue(srcT.pixels[k]);
        
        float r2 = red(srcTT.pixels[k]);
        float g2 = green(srcTT.pixels[k]);
        float b2 = blue(srcTT.pixels[k]);

        if(j < srcT.width/3)
        {
            tst9.pixels[k] = color(r2, g2, b2);
        } else if (j > 2 * srcT.width / 3)
        {
            tst9.pixels[k] = color(r1, g1, b1);;
        } else {
            float a = j - srcT.width/3;
            float b = 2 * srcT.width/3;
            float c = float(3) / float(srcT.width);
            
            float dred = (a*r1 + (b-j)*r2) * c;
            float dgrn = (a*g1 + (b-j)*g2) * c;
            float dblu = (a*b1 + (b-j)*b2) * c;
            
            tst9.pixels[k] = color(dred, dgrn, dblu);
        }
         
       for(int ipp = 0; ipp < tst.length; ipp++)
       {
           int ii = tst.length-ipp-1;
           int ij = ipp+1;
           int kk = tst.length;
      
           tst[ipp].pixels[k] = color( (ii*r1 + ij*r2)/kk, (ii*g1 + ij*g2)/kk, (ii*b1 + ij*b2)/kk );

       }
        
    }
  }
  for (int ipp = 0; ipp < tst.length; ipp++)
  {
      tst[ipp].updatePixels();
  } 
  
  //NINE
  
  srcN = loadImage("nine3.jpg"); 
  srcNN = loadImage("nine4.jpg"); 
  
  srcN.resize(450, 450);
  srcNN.resize(450, 450);
  
  srcN.loadPixels();
  srcNN.loadPixels();
  

  
  for (int i = 0; i < dst.length; i++)
  {
      dst[i] = createImage(srcN.width, srcN.height, RGB);
  }
  
  dst9 = createImage(srcN.width, srcN.height, RGB);
  
  halfW = srcN.width/2.0;
  halfH = srcN.height/2.0;
  
  
  for (int i = 0; i < srcN.height; i++)
  {
    for (int j = 0; j < srcN.width; j++)
    {
        int k = srcN.width * i + j;
        
        float r1 = red(srcN.pixels[k]);
        float g1 = green(srcN.pixels[k]);
        float b1 = blue(srcN.pixels[k]);
        
        float r2 = red(srcNN.pixels[k]);
        float g2 = green(srcNN.pixels[k]);
        float b2 = blue(srcNN.pixels[k]);

        if(j < srcN.width/3)
        {
            dst9.pixels[k] = color(r2, g2, b2);
        } else if (j > 2 * srcN.width / 3)
        {
            dst9.pixels[k] = color(r1, g1, b1);;
        } else {
            float a = j - srcN.width/3;
            float b = 2 * srcN.width/3;
            float c = float(3) / float(srcN.width);
            
            float dred = (a*r1 + (b-j)*r2) * c;
            float dgrn = (a*g1 + (b-j)*g2) * c;
            float dblu = (a*b1 + (b-j)*b2) * c;
            
            dst9.pixels[k] = color(dred, dgrn, dblu);
        }
         
       for(int ipp = 0; ipp < dst.length; ipp++)
       {
           int ii = dst.length-ipp-1;
           int ij = ipp+1;
           int kk = dst.length;
      
           dst[ipp].pixels[k] = color( (ii*r1 + ij*r2)/kk, (ii*g1 + ij*g2)/kk, (ii*b1 + ij*b2)/kk );

       }
        
    }
  }
  for (int ipp = 0; ipp < dst.length; ipp++)
  {
      dst[ipp].updatePixels();
  } 
  
  // TEN

  srcL = loadImage("ten3.jpg"); 
  srcLL = loadImage("ten4.jpg"); 
  
  srcL.resize(450, 450);
  srcLL.resize(450, 450);
  
  srcL.loadPixels();
  srcLL.loadPixels();
  

  
  for (int i = 0; i < tst.length; i++)
  {
      lst[i] = createImage(srcL.width, srcL.height, RGB);
  }
  
  lst9 = createImage(srcL.width, srcL.height, RGB);
  
  
  for (int i = 0; i < srcL.height; i++)
  {
    for (int j = 0; j < srcL.width; j++)
    {
        int k = srcL.width * i + j;
        
        float r1 = red(srcL.pixels[k]);
        float g1 = green(srcL.pixels[k]);
        float b1 = blue(srcL.pixels[k]);
        
        float r2 = red(srcLL.pixels[k]);
        float g2 = green(srcLL.pixels[k]);
        float b2 = blue(srcLL.pixels[k]);

        if(j < srcL.width/3)
        {
            lst9.pixels[k] = color(r2, g2, b2);
        } else if (j > 2 * srcL.width / 3)
        {
            lst9.pixels[k] = color(r1, g1, b1);;
        } else {
            float a = j - srcL.width/3;
            float b = 2 * srcL.width/3;
            float c = float(3) / float(srcL.width);
            
            float dred = (a*r1 + (b-j)*r2) * c;
            float dgrn = (a*g1 + (b-j)*g2) * c;
            float dblu = (a*b1 + (b-j)*b2) * c;
            
            lst9.pixels[k] = color(dred, dgrn, dblu);
        }
         
       for(int ipp = 0; ipp < lst.length; ipp++)
       {
           int ii = lst.length-ipp-1;
           int ij = ipp+1;
           int kk = lst.length;
      
           lst[ipp].pixels[k] = color( (ii*r1 + ij*r2)/kk, (ii*g1 + ij*g2)/kk, (ii*b1 + ij*b2)/kk );

       }
        
    }
  }
  for (int ipp = 0; ipp < lst.length; ipp++)
  {
      lst[ipp].updatePixels();
  } 
  
  
  
  font = createFont("Courier", 48);
  textFont(font, 50);
  smooth();
  
  
}