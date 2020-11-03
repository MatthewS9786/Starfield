Particle[]bob =new Particle[300];
OddballParticle sue =new OddballParticle();

void setup()
{
  size(400,400);
  for(int i=0;i<bob.length;i++){
    bob[i]=new Particle();
  }
}
void draw()
{
  background(0);
  for(int i=0;i<bob.length;i++){
    sue.move();
    sue.show();
    bob[i].move();
    bob[i].show();
  }
}
class Particle
{
  int myRed,myGreen,myBlue;
  double myX, myY, mySpeed, myAngle;
  Particle(){
    myX=200;
    myY=200;
    mySpeed=(Math.random()*5);
    myAngle=(int)(Math.random()*360);
    myRed=(255);
    myGreen=(255);
    myBlue=(255);
  }

  void move(){
    myX+=Math.cos(myAngle)*mySpeed;
    myY+=Math.sin(myAngle)*mySpeed;
  }
  void show(){
    fill(myRed,myGreen,myBlue);
    ellipse((float)myX,(float)myY,12,12);
  }
}
class OddballParticle extends Particle
{
  OddballParticle(){
    mySpeed=.01;
    myRed=(128);
    myGreen=(0);
    myBlue=(128);
  }
  void move(){
     if(myX>=400){
       mySpeed=-.01;
     }
     if(myX<=0){
       mySpeed=.01;
     }
    myX+=Math.cos(myAngle)*mySpeed;
  }
  void show(){
    fill(myRed,myGreen,myBlue);
    triangle((float)myX-10,(float)myY+10,(float)myX,(float)myY-10,(float)myX+10,(float)myY+10);
  }
   
}


