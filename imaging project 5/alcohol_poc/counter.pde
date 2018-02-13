float iday=-250;
void counter()
{
  iday += 1;
  pushMatrix(); 
  PFont f;
  String s = "";
  f = createFont("Ubuntu", int(0.04 * min(width, height)), true);
  textFont(f);
  textAlign(LEFT);
  smooth();
  fill(150, 0, 0);
  s = ""+iday;
  text(s,3, height-3);      
  popMatrix();
}