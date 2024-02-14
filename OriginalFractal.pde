public int sizeOfCircle = 200;
public void setup()
{
  size(500, 500);
  background(0);
  stroke((float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
  rectMode(CENTER);
}
void draw() {
    background(0);
   if (sizeOfCircle > 0){
     noFill();
   } else {
     textAlign(CENTER);
     textSize(20);
     fill((float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
     text("COWVIN GOES MOOOOOOO", 250, 20);
   }
   myFractal(250, 250, sizeOfCircle);
}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  if (e > 0){
    sizeOfCircle+= 10;
  } else if (e <= 0){
    sizeOfCircle-= 10;
  }
}
void keyPressed(){
     if (key == 'w'){
     sizeOfCircle += 10;
   } else if (key == 's'){
     sizeOfCircle -= 10;
   }
}
void mousePressed() {
stroke((float)(Math.random()*255), (float)(Math.random()*255), (float)(Math.random()*255));
}
public void myFractal(double x, double y, double siz) {
  if (!(x < 0 || y > 500 || x > 500 || y < 0)){
  ellipse((float)x, (float)y, (float)siz, (float)siz);
  }
  if (siz > 5) {
    myFractal(x+siz/2, y-siz/2, siz/2);
    myFractal(x-siz/2, y+siz/2, siz/2);
    myFractal(x-siz/2, y-siz/2, siz/2);
    myFractal(x+siz/2, y+siz/2, siz/2);
  }
}
