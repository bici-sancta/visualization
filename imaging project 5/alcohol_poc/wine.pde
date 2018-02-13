float zoom;
float wy1;
float wy2;
float wx1;
float wx2;
float a;

int b;

int radius=0;
int length=300;
boolean circleIsShrinking = false;
float opacity;

void draw_wine()
{
  //wine
  pushMatrix();
  
  if( millis() % 4000 < 1000 ){ 
  a=0;
  a+=millis()%1000;
  tint(163, 73, 164, a);
  image(wine, 750, 150);
  noTint();
  }

  else if( millis() % 4000 < 2000 ){
  //a=0;
  a+=millis()%1000;
  tint(163, 73, 164, a);
  image(wine, 750, 150);
  noTint();
  }
  else if( millis() % 4000 < 3000 ){
  opacity= 150;
  opacity-=millis()%1000;
  tint(163, 73, 164, opacity);
  image(wine, 750, 150);
  noTint();
  }
  else {
  opacity = 150;
  opacity-=millis()%1000;
  tint( 163, 73, 164, opacity);
  image(wine, 750, 150);
  noTint();
  }
  
  //a+=millis()%1000*10;

  
  //opacity-=millis()%1000*(-10);
  popMatrix();
}