


void draw_sun()

{
    
  fill(255, 201, 14);
  translate(2500/2, 1600+700);
  rotate(rss);
  translate(-2500/2, -1600-700);
  ellipse(2489, 275, 250, 250);
  fill(255, 201, 14, 30);
  ellipse(2489, 275, 280, 280);
  fill(255, 201, 14, 40);
  ellipse(2489, 275, 350, 350);
  rotate(-rss); 
  
  rss = -2 * PI * float(iday) / 365;;
  
}