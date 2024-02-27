int scale = 40;
int colour;
int interval = 500;
int lastRecordedTime = 0;
void setup()
{
  size(640,480);
  background(255);
  colour = 1;
  
 
}

void draw()
{
  
  for(int i = 0; i < width/scale; i++)
  {
    for(int j = 0; j < height/scale; j++)
    {
      colour++;
      
      int x = i*scale;
      int y = j*scale;
      if(colour % 2 != 0)
      {
        fill(255);
        stroke(255);
      }
      else
      {
        fill(0);
        stroke(0);
      }
      rect(x,y,scale,scale);
      
    }
    colour++;
  }
  if(millis()-lastRecordedTime>interval)
  {
    colour++;
    lastRecordedTime = millis();
  }
  
}
