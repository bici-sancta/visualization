

void draw_streak()
{
  fill(200, 40);
   beginShape();
        vertex(-444, 617);
        bezierVertex(506, 0, 2000, 0, 3000, 550);
        bezierVertex(3000, 1000, 2000, 0, -444, 617);
    endShape();
    pushMatrix();
        scale(.8);
        translate(200, 500);
        beginShape();
            vertex(-444, 617);
            bezierVertex(506, 0, 2000, 0, 3000, 550);
            bezierVertex(3000, 1000, 2000, 0, -444, 617);
        endShape();
    popMatrix();
    
    pushMatrix();
        scale(.6);
        translate(800, 1300);
        beginShape();
            vertex(-444, 617);
            bezierVertex(506, 0, 2000, 0, 3000, 550);
            bezierVertex(3000, 1000, 2000, 0, -444, 617);
        endShape();
    popMatrix();
}