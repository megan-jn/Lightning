int startX = 150;
int startY = 140;
int endX = 0;
int endY = 500;
PImage faucet;

void setup()
{
  size(500, 500);
  strokeWeight(6);
  faucet = loadImage("faucet.png");
  faucet.resize(500, 500);
  image(faucet, 0, 0, 170, 200);
  background(255, 255, 255);
}
void draw()
{
  image(faucet, 0, 0, 170, 200);
  stroke((int) (Math.random()*1) + 100, (int) (Math.random()*200) + 100, (int) (Math.random()*256) + 200);
  while (endX < 500) {
    endX = startX + (int)(Math.random()*10) + 1;
    endY = startY + (int)(Math.random()*10) + 30;
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed()
{
  startX = 150;
  startY = 140;
  endX = 0;
  endY = 500;
}
