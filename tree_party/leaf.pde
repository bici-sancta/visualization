



void draw_leaf(color leaf_color)
{
color c2 = leaf_color + color(30, 50, 20);

  pushMatrix();
      scale(.2);
      noStroke();
      
      fill(c2);
      bezier(214, 23, 207, 79, 150, 100, 207, 131);
      
 
      fill(leaf_color);
      bezier(214, 23,255, 107, 253, 108, 207, 131);
      
  popMatrix();
  
}