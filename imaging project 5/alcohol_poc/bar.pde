float whitex;
float bb;

void draw_bar()
{
  
  pushMatrix();
   //scale(.6,.8);
   image(bar,0, 0);
   tint(whitex); 
   whitex+=10;
 
 image(bar,0,0);
  if ((iday>500)&&(iday<1000))
{
  tint(255,255,255,a);
  image(bar3,0,0);
  if(a<255);
    a++;
}
    else if ((iday>1000)&&(iday<1500))
{
  tint(255,255,255,a);
  image(bar4,0,0);
  if(a<255);
    a++;
}
    else if ((iday>1500)&&(iday<2000))
{
  tint(255,255,255,a);
  image(bar5,0,0);
  if(a<255);
    a++;
}
    else if ((iday>2000)&&(iday<2500))
{
  tint(255,255,255,a);
  image(bar2,0,0);
  if(a<255);
    a++;
}
  popMatrix();
}
  