float Max = 90;

float X, Y;
float SpX, SpY;
float Acx, Acy;

void setup() {
  size(800, 800);
  colorMode(HSB, 100);
  background(99);
  frameRate(15);
  
  X = 0;
  Y = 0;
  SpX = 0;
  SpY = 0;
  Acx = Acy = 0.5;
}

void draw(){
  fadeToWhite();
  
  SpX = SpX + Acx;
  SpY = SpY + Acy;
  if(SpX > Max) SpX = Max;
  if(SpY > Max) SpY = Max;
  X = X + SpX;
  Y = Y + SpY;
  
  noStroke();
  fill(0);
  rectMode(CENTER);
  rect(X, Y, 10, 10);
}

void fadeToWhite() {
  noStroke();
  fill(99, 30);
  rectMode(CORNER);
  rect(0, 0, width, height);
}
