

float x =1400;
float y= 800;
float c=1500;
float speed=3;
float speedi=4;
float p=1600;
float speedo=2;

PFont f;
String s = "";

void draw_pond()
{
    pushMatrix();
        translate(900, 700);
          noStroke();
          fill(0, 102, 153, 20);
          ellipse(c, y, 1200, 330);
          fill(0, 128, 192, 100);
          ellipse(1400, 800, 1200, 330);
          ellipse(1600, 800, 1200, 330);
          
          
          fill(0, 0, 255, 40);
          ellipse(1400, 800, 1200, 330);
          fill(46, 117, 255, 20);
          
          ellipse(1400, 800, 1000, 330);
          fill(100, 225, 235, 20);
          ellipse(c, y, 1000, 330);
          c=c+speedi;
            if(c>1700){         
              speedi=-speedi;
             }
             if(c<1398){
              speedi = -speedi;
             }
          ellipse(p, y, 1200, 330);
          fill(0, 121, 118, 20);
          ellipse(p, y, 1050, 300);
            p=p+speedo;
            if(p>1800){         
              speedo=-speedo;
             }
             if(p<1398){
              speedo = -speedo;
             }
          fill(51, 204, 255, 20);
          ellipse(x, y, 800, 200);
          fill(0, 0, 204, 20);
          ellipse(1400, 800, 600, 200);
          fill(46, 117, 255, 20);
          ellipse(x, y, 1100, 300);
          x=x+speed;
          if(x>1540){         
            speed=-speed;
          }
          if(x<1399){
            speed = -speed;
          }
          f = createFont("Palatino Linotype", 50);
          textFont(f);
          textAlign(LEFT);
          smooth();
          fill(255);
          
          if(iday < 366){
            s = "Today is day "+iday+" of 2017";
            text(s,x-500, y);
          }else{
            s = "Turning a new leaf in 2018";
            text(s,x-550, y);
          }
          
    popMatrix();
}