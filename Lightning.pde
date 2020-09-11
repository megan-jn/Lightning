/* @pjs preload="dam.jpg"; */
int startX = 250;
int startY = 250;
int endX = 0;
int endY = 510;
PImage img;

void setup()
{
  size(500, 500);
  strokeWeight(6);
  img = loadImage("dam.jpg");
  img.resize(500, 500);
  background(img);
}
void draw()
{
  stroke((int) (Math.random()*1) + 100, (int) (Math.random()*200) + 100, (int) (Math.random()*256) + 200);
  while (endX < 500) {
    endX = startX + (int)(Math.random()*10);
    endY = startY + (int)(Math.random()*10);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed()
{
  startX = 250;
  startY = 250;
  endX = 0;
  endY = 250;
}
