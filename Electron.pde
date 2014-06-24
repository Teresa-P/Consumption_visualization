//Initializing class Electron
class Electron
{
  float xPos;
  float yPos;
  float speed;
  color c;
    
  //constructor
  Electron(float x, float y)
  {
    xPos = x;
    yPos = y;
    speed = 0;
  }
  
  //function that sets speed
  void velocity()
  {
    speed = speed + velocity;
  }
  
  //function that make electrons move by changing coordinates trough speed
  void move()
  {
    xPos = xPos + speed;
    
    if (xPos > width*2)
    {
      speed = speed * random(-1.95, 0.95);
      xPos = width;
    }
  }
  
  //function that will set the correct positions and colors of the electrons by power consumption
  void electronColor()
  {
   if (power<500)
   {
     electronColor = color(63,188,240);
    
     if (yPos<450)
     {
       yPos = yPos + 50;
     }
     
   }
   
   else if (power>=500 && power<1000)
   {
     electronColor = color(6,105,178);
     
     if (yPos<400)
     {
       yPos = yPos + 50;
     }
     else if (yPos>450)
     {
       yPos = yPos - 50;
     }
   }
   
   else if (power>=1000 && power<1500)
   {
     electronColor = color(0,159,60);
    
     if (yPos<350)
     {
       yPos = yPos + 50;
     }
     else if (yPos>400)
     {
       yPos = yPos - 50;
     }
   }
   else if (power>=1500 && power<2000)
   {
     electronColor = color(0,255,0);
     
     if (yPos<300)
     {
       yPos = yPos + 50;
     }
     else if (yPos>350)
     {
       yPos = yPos - 50;
     }
   
    }
    else if (power>=2000 && power<2500)
    {
      electronColor = color(249,244,0);
     
      if (yPos<250)
      {
        yPos = yPos + 50;
      }
      else if (yPos>300)
      {
        yPos = yPos - 50;
      }
    }
    else if (power>=2500 && power<3000)
    {
      electronColor = color(239,156,0);
     
      if (yPos<200)
      {
        yPos = yPos + 50;
      }
      else if (yPos>250)
      {
        yPos = yPos - 50;
      }
    }
    else if (power>=3000 && power<3500)
    {
      electronColor = color(232,100,27);
     
      if (yPos<150)
      {
        yPos = yPos + 50;
      }
      else if (yPos>200)
      {
        yPos = yPos - 50;
      }
    }
    else if (power>=3500 && power<4000)
    {
      electronColor = color(255,0,0);
     
      if (yPos<100)
      {
        yPos = yPos + 50;
      }
      else if (yPos>150)
      {
        yPos = yPos - 50;
      }
    }
   
    else if (power>=4000)
    {
      electronColor = color(96,0,81);
     
      if (yPos<50)
      {
        yPos = yPos + 50;
      }
      else if (yPos>100)
      {
        yPos = yPos - 50;
      }
    }
  }
 
  //function that will display the electrons )ellipses)
  void display()
  {
    fill(electronColor);
    stroke(electronColor);
    ellipse(xPos,yPos,1,1);
   }
  
}//end of class
  
  
