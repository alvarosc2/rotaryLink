float Diam = 10;
float r = 50;
float r2 = 150;
float theta = 0;
float S1 = 0;

int WinWidth  = 640;
int WinHeight = 480;
int FRate = 30;

void setup()
{ 
  frameRate(FRate);
  
  //1150x100 window
  //Black background
  //Green foreground like in the old times
  size(640, 480);
  background(0);
  stroke(0, 255, 0);
  noFill();
  

}

void draw()
{
  background(0);
  
  //Link 0 is the frame of the machine
  stroke(255, 0, 0);
  line(WinWidth / 2 + 50, WinHeight / 2, WinWidth / 2 + 220, WinHeight / 2);
  
  stroke(0, 255, 0);
  
  //Link 1
  //Position calculation
  point(WinWidth / 2, WinHeight / 2);
  line(WinWidth / 2, WinHeight / 2, r * cos(theta) + WinWidth / 2, r * sin(theta) + WinHeight / 2);
  ellipse(r * cos(theta) + WinWidth / 2, r * sin(theta) + WinHeight / 2, Diam, Diam);
  
  //Link 3
  ellipse((r * cos(theta) + sqrt(sq(r2) - sq(r * sin(theta)))) + WinWidth / 2, WinHeight / 2, Diam, Diam);
  
  //Link 2
  line(r * cos(theta) + WinWidth / 2, r * sin(theta) + WinHeight / 2, (r * cos(theta) + sqrt(sq(r2) - sq(r * sin(theta)))) + WinWidth / 2, WinHeight / 2);
  
  theta += 0.05; 
}
