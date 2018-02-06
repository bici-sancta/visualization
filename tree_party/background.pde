


void draw_background()
{    
    pushMatrix();
    translate(2500/2, 1600+700);
    rotate(rtt);
    translate(-2500/2, -1600-700);
    noStroke();
    
    fill(112, 146, 190);
    arc(2500/2, 1600+700, 2500*2, 2500*2, PI+QUARTER_PI, TWO_PI-QUARTER_PI, PIE);
    fill(0,0, 128);
    arc(2500/2, 1600+700, 2500*2, 2500*2, PI+QUARTER_PI-HALF_PI, TWO_PI-QUARTER_PI-HALF_PI, PIE);
    fill(240, 173, 62);
    arc(2500/2, 1600+700, 2500*2, 2500*2, PI+QUARTER_PI+PIE, TWO_PI-QUARTER_PI+PI, PIE);
    fill(98, 183, 204);
    arc(2500/2, 1600+700, 2500*2, 2500*2, PI+QUARTER_PI+HALF_PI, TWO_PI-QUARTER_PI+HALF_PI, PIE);
    popMatrix();

    rtt = -2 * PI * float(iday) / 365;
      
}