public int size = 200;
public void setup()
{
  size(500, 500);
  background(0);
  stroke((float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
  rectMode(CENTER);
}
void draw() {
    background(0);
       
   if (size > 0){
     noFill();
   } else {
     textAlign(CENTER);
     textSize(20);
     fill((float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
     text("COWVIN GOES MOOOOOOO", 250, 20);
   }
   myFractal(250, 250, size);
}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  if (e > 0){
    size+= 10;
  } else {
    size-= 10;
  }
}

void mousePressed() {
stroke((float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
}
public void myFractal(int x, int y, int siz) {
  ellipse(x, y, siz, siz);
  if (siz > 5) {
    myFractal(x+siz/2, y-siz/2, siz/2);
    myFractal(x-siz/2, y+siz/2, siz/2);
    myFractal(x-siz/2, y-siz/2, siz/2);
    myFractal(x+siz/2, y+siz/2, siz/2);
  }
}
