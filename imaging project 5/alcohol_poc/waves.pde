/// Text

String text1 = "Photographer Marcos Alberti's '3 Glasses' Project: The following is a series of images of four volunteers taken after 1, 2, and 3 glasses of wine.";
PFont font;
int counter;

//The Wave Class
class Wave {
  //Location
  PVector loc;
  //In case you are not familiar with PVectors, you can
  //think of it as a point; it holds an x and a y position
 
  //The distance from the wave origin
  int farOut;
 int farOut2;
  //Color
  color strokeColor;
  
  Wave() {
    //Initialize the Location PVector
    loc = new PVector();
   
    //Set location to the Mouse Position
    loc.x = width/2;
    loc.y = height/2;
   
    //Set the distance out to 1
    farOut = 1;
   
    //Randomize the Stroke Color
    strokeColor = color(156, 50);
  }
 
  void update() {
    //Increase the distance out
    farOut += 2;
    farOut2 += .8;
  }
 
  void display() {
    //Set the Stroke Color
    stroke(strokeColor);
   
    //Draw the ellipse
    ellipse(loc.x, loc.y, 100+farOut, 50);
  }
 
  boolean dead() {
    //Check to see if this is all the way out
    if(farOut > 600) {
      //If so, return true
      return true;
    }
    //If not, return false
    return false;
  }
}
//Create the ArrayList of Waves
ArrayList<Wave> waves = new ArrayList<Wave>();


void typewriteText(){
  if (counter < text1.length())
    counter+=001;
  text(text1.substring(0, counter), 40, 40, width, height);
}