Particle[] fun = new Particle[1000];
void setup()
{
  background(0, 0, 0);
  size(1000, 1000);
  for (int i =0; i<fun.length; i++) {
    fun[i]  = new Particle();
    fun[0]=new OddballParticle();
    //your code here
  }
}
void draw()
{
  background(0);
  for (int i=0; i<fun.length; i++) {
    fun[i].move();
    fun[i].show();
  }
}
void mousePressed() {
  clear();
  redraw();
}
class Particle
{
  double myX, myY, myAngle, mySpeed;
  int myColor;
  Particle() {
    myX=myY=500;
    myAngle=Math.random()*2*Math.PI;
    mySpeed=Math.random()*10;
    myColor=color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }
  void move() {
    myX+=Math.cos(myAngle)*mySpeed;
    myY+=Math.sin(myAngle)*mySpeed;
  }
  void show() {

    fill(myColor);
    ellipse((float)myX, (float)myY, 20, 20);
  }
}

class OddballParticle extends Particle//inherits from Particle
{
  OddballParticle() {
    myX =(int)(Math.random()*6)+2;
    myY= (int)(Math.random()*999);
    //your code here
  }
  void move() {
    myX+=(int)(Math.random()*3);
    myY+=(int)(Math.random()*3);
  }
  void show() {
    fill(myColor);
    ellipse((float)myX, (float)myY, 20, 35);
    ellipse((float)myX, (float)myY+6, 40, 20);
  }
}
  void mouseClicked()
  {
    background(0);
    for (int i=0; i<fun.length; i++) {
      fun[i] = new Particle();
      fun[0]=new OddballParticle();
    }
  }
