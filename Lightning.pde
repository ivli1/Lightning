int x = 0;
int y = 0;
int xf = 0;
int yf = 0;
boolean i = true;
void setup(){
size(600,600);
strokeWeight(10);
background(#cccccc);
frameRate(25);
}

void draw(){
  int r = (int)(Math.random()*255);
  int g = (int)(Math.random()*255);
  int b = (int)(Math.random()*255);
  stroke(r,g,b);
  if(i == false){
    xf = x + ((int)(Math.random()*101)-50);
    yf = y + ((int)(Math.random()*101)-50);
    line(x,y,xf,yf);
    x = xf;
    y = yf;
  }
}

void mousePressed(){
  x = mouseX;
  y = mouseY;
  i = false;
  background(#cccccc);
  strokeWeight(5);
  stroke(#ffffff);
  fill(#ffffff);
  ellipse(mouseX,mouseY,30,30);
  strokeWeight(15);
}
