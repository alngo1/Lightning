int startX = 150;
int startY = 0;
int endX = 150;
int endY = 300;
void setup()
{
  size(300, 300);
  strokeWeight(5);
  background(#000000);
}

void draw()
{
  fill(0, 0, 0, 50);
  rect(-10, -10, 400, 400);
  drawLightning();
}

void mousePressed()
{
  background(#000000);
  startX = 150;
  startY = 0;
  endX = 150;
  endY = 300;
  redraw();
}

int randomColor()
{
  int random = (int)(Math.random()*256);
  return random;
}

void drawLightning()
{
  stroke(240, 240, randomColor());
  while (endX < 300)
  {
    endX = startX + (int)(Math.random()*19-9);
    endY = startY + (int)(Math.random()*10);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}