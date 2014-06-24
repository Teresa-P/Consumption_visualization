/*
Data visualization - Electricity consumption of one house in Madeira Island 
- as higher the glittering, higher the consumption level -
(measured in minutes) - Since 25/11/2010 till 21/12/2010
*/
//Teresa Paulino
//10-05-2012
//v.1.1

//Global Variables
String[] lines;
int linesCounter; 
int power; 
String dateAndTime; 
int hours;
int minutes;
Electron[] electrons = new Electron[1000];
float velocity = 0.1;
color electronColor;
PFont font;


void setup()
{
  size (500, 500);
  background(0);
  smooth();
  font = loadFont("TheSans-Plain-12.vlw"); 
  
  //stroke(255);
  
  //filling the array lines with the data information read from the data file
  lines = loadStrings("ConsumptionByMinute.txt");
  
  //filling the electrons array with random values so each Electron can have a starting position
  for (int i = 0; i < electrons.length; i ++ ) 
  { 
  electrons[i] = new Electron(int(random(-width*2,width)),int(random(0,height)));
  }
}

//start the drawing
void draw()
{
  //read each line and separate the information in order to attribute values to the variables
  if (linesCounter<lines.length) 
  {
    String[] dataLines = split(lines[linesCounter], ',');
    if (dataLines.length==5)
    {
      
      //println(dataLines[0] + " " + dataLines[2] + " " + dataLines[3] + " " + dataLines[4]);
      
      power = int(dataLines[0]);
      dateAndTime = dataLines[2];
      hours = int(dataLines[3]);
      minutes = int(dataLines[4]);
      
      //set background again  and load image in order to 'clean' the window  
      background(0);
      image(loadImage("colorBars.png"),0,0);
      
      //text information of power consumption, date and time that will appear on the top of the window
      textFont(font, 12);
      text("Power consumption: " + power,180,20);
      
      textFont(font, 26);
      text(dateAndTime, 140, 45);
          
      //draw electrons 'animation' (see class Electron)
      for (int i=0; i<electrons.length; i++)
      {   
        electrons[i].velocity();
        electrons[i].move();
        electrons[i].electronColor();
        electrons[i].display();
       }
   }
   
   linesCounter = linesCounter + 1; //increase the variable to get information of the next line
  }
  //if linesCounter reach the end of the array, load an image informing to press a key to restart
  else
  {
    image(loadImage("restartImage.png"),0,0);
  }
}


//anytime if any key is pressed, the 'animation' restarts
void keyPressed()
{
  if (keyPressed==true)
  {
    linesCounter=0;
  }
}
