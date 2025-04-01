
void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

void draw()
{
  background(0);
  //circle(0, 0, 50);
  
  //strokeWeight(2);
  //color white = color(255, 255, 255);
  //fill(white);
  //stroke(white);
  //line(100, 100, -100, -100);
  
  drawCartesianPlane();
  drawLinearFunction();
  drawQuadraticFunction();
  drawCircle();
  drawSinWave();
}

void drawCartesianPlane()
{
  strokeWeight(1);
  color white = color(255,255,255);
  fill(white);
  stroke(white);
  
  line(300, 0, -300, 0);
  line(0, 300, 0, -300);
  
  for (int i = -300; i < 300; i+=10)
  {
    line(i, -2, i, 2);
    line(-2, i, 2, i);
  }
}

void drawLinearFunction()
{
  color red = color(128,0,128);
  fill(red);
  noStroke();
  
  for(int x = -200; x <= 200; x++)
  {
    circle(x, (-5*x)+30, 5);
  }
}

void drawQuadraticFunction()
{
  color yellow = color(255,255,0);
  fill(yellow);
  stroke(yellow);
  
  for(float x = -300; x <= 300; x += 0.1f)
  {
    circle(x * 10, (x * x) - (15*x) - 3, 2.5);
  }
}

void drawCircle()
{
  color blue = color(0,0,255);
  fill(blue);
  stroke(blue);
  float radius = 50;
  
  for(int x = 0; x <= 360; x++)
  {
    circle((float)Math.cos(x) * radius, (float)Math.sin(x) * radius, 2.5);
  }
}

void drawSinWave()
{
  color blue = color(0,0,255);
  fill(blue);
  stroke(blue);
  float frequency = 1;
  float amplitude = 50;
  
  for(float x = -20; x <= 20; x += 0.1f)
  {
    circle(x / frequency * 10, (float)Math.sin(x) * amplitude, 2.5);
  }
}
