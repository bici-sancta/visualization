


void draw_underleaf()
{
  pushMatrix();
  
     fill(0, 79, 33, 40);
      //translate(1175, 820);
      //rotate(QUARTER_PI/2);
      //translate(-1175, -820);
     bezier(400, y_lf_max, 550, -200, 1750, -200, 1900, y_lf_max);
 
     ellipse(666, 503, 618, 682);
//     ellipse(614, 200, 475, 249);
//     ellipse(1700,170, 356, 280);
     ellipse(1720, 512, 357, 662);
     
  popMatrix();
}