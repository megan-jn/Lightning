int startX = 250;
int startY = 250;
int endX = 0;
int endY = 500;
PImage dam;

void setup()
{
  size(500, 500);
  strokeWeight(6);
  dam = loadImage("dam.jpg");
  dam.resize(500, 500);
  image(dam, 10, 10);
}
void draw()
{
  image(dam, 10, 10);
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
  endY = 500;
}
