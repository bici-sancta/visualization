void draw_earth()
{
    noStroke();
    fill(0);
    triangle(0,0, 2500/8, 1600*.90, 0, 1600);
    triangle(2500, 0, 2500*.875, 1600*.9, 2500, 1600);
    
    fill(81, 118, 8);
    bezier(-1000, 1600, 2500/8, 1600*.7, 2500*7/8, 1600*.7, 2500+1000, 1600);

}