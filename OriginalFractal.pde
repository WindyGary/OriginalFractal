public void setup()
{
  size(500,500);
  background(0);
  noFill();
  stroke((float)(Math.random()*255),(float)(Math.random()*255),(float)(Math.random()*255));
  rectMode(CENTER);
}
void draw(){
  myFractal(250,250,200);
}
void mousePressed(){
  stroke((float)(Math.random()*255),(float)(Math.random()*255),(float)(Math.random()*255));
}
public void myFractal(int x, int y, int siz){
  ellipse(x,y,siz,siz);
  if (siz > 10){
    myFractal(x+siz/2, y-siz/2, siz/2);
    myFractal(x-siz/2, y+siz/2, siz/2);
    myFractal(x-siz/2, y-siz/2, siz/2);
    myFractal(x+siz/2, y+siz/2, siz/2);
  }
}
