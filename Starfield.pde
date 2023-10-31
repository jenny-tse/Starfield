Particle[]star=new Particle[2000];
void setup(){
  size(1000,1000);
  for(int i=0;i<star.length;i++){
    star[i]=new Particle();
  }
  for(int i=1900;i<star.length;i++){
    star[i]=new OddballParticle();
  }
}
void mousePressed(){
  double myX,myY,myAngle,mySpeed;
  int myColor;
    myX=myY=500;
    myAngle=Math.random()*2*Math.PI;
    mySpeed=Math.random()*2;
    myColor=color((int)(Math.random()*256+150),(int)(Math.random()*256+100),(int)(Math.random()*256+150));
    
}
void draw(){
  noStroke();
  background(0);
  for (int i=0;i<star.length;i++){
  star[i].show();
  star[i].move();
  }
}

class Particle{
  double myX,myY,myAngle,mySpeed;
  int myColor;
  Particle(){
    myX=myY=500;
    myAngle=Math.random()*2*Math.PI;
    mySpeed=Math.random()*2;
    myColor=color((int)(Math.random()*256+150),(int)(Math.random()*256+100),(int)(Math.random()*256+150));
    }
  void move(){
    myX += cos((float)myAngle) * mySpeed * 2;
    myY += sin((float)myAngle) * mySpeed * 2;
        if (mouseX>500){
      myX -= cos((float)myAngle) * mySpeed * 5;
      myY -= sin((float)myAngle) * mySpeed * 5;
    }
    if (mouseX<500){
      myX += cos((float)myAngle) * mySpeed * 5;
      myY += sin((float)myAngle) * mySpeed * 5;
    }
    }
  void show(){
    fill (myColor);
    ellipse((float)myX,(float)myY,10,10);
    }
}
 
class OddballParticle extends Particle{
OddballParticle() {
    myX=myY=500;
    myAngle=Math.random()*2*Math.PI;
    mySpeed=Math.random()*10;
    myColor=color((int)(Math.random()*256+150),(int)(Math.random()*256+100),(int)(Math.random()*256+150));
  }
  void move() {
    myX += cos((float)myAngle) * mySpeed;
    myY += sin((float)myAngle) * mySpeed;
    if (myX>800||myX<200) {
      mySpeed = random(1, 4);
      myAngle += random(-PI/2, PI/2);
    }
  }
}
