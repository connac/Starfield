Particle [] bob;
public void setup()
{
  size(700,700);
  bob = new Particle[300];
  for(int i = 0; i<bob.length; i++)
  {
    bob[i] = new NormalParticle();
  }
  //for(int i = 0; i<parts.length; i++)
  //{
  //  parts[i] = new JumboParticle();
  //}
   bob[0] = new OddballParticle();
   bob[1] = new JumboParticle();
}

void draw()
{
  fill(0,0,0,20);
  rect(0,0,700,700);
  for(int i = 0; i < bob.length; i++)
  {
    bob[i].move();
    bob[i].show();
  }
}

class NormalParticle implements Particle
{
  double dX, dY, dTheta, dSpeed;
  int dColor;
  NormalParticle()
  {
    dX = width/2;
    dY = height/2;
    dTheta = (Math.random()*Math.PI*2);
    dSpeed = (Math.random()*2)+1;
    dColor = color((int)(Math.random()*255),(int)(Math.random()*255),255);
  }
  void move()
  {
    dX = dX + Math.cos(dTheta) * dSpeed;
    dY = dY + Math.sin(dTheta) * dSpeed;
    dTheta = dTheta+.015;
  }
  void show()
  {
    fill(dColor);
    ellipse((float)dX,(float)dY,10,10);
  }
}

interface Particle
{ 
  public void move();  
  public void show();
}

class OddballParticle implements Particle
{
  double myX, myY, myTheta, mySpeed;
  int myColor;
  
  OddballParticle()
  {
    myX = 110;
    myY = 110;
    myTheta = (Math.random()*Math.PI*2);
    //mySpeed = (Math.random()*3)+2;
    myColor = color(255);
  }
  void move()
  {
    //int choose=(int)(Math.random()*2);

    // myX = myX + Math.cos(myTheta) * mySpeed;
    // myY= myY + Math.sin(myTheta) * mySpeed;
    myTheta = myTheta-.03;
    // if(choose == 0){
    //   myTheta = myTheta-.015;
    // }
    // else if(choose == 1){
    //   myTheta = myTheta+.015;
    // }
  }
  void show()
  {
    fill(myColor);
  	pushMatrix();
    	translate(350,350);
    	rotate((float)myTheta);
    	ellipse((float)myX,(float)myY,10,10);
    popMatrix();
  }
}
class JumboParticle extends NormalParticle
 {
//   public void move()
//   {    
//     dX = dX + Math.cos(dTheta) * dSpeed+5;
//     dY = dY + Math.sin(dTheta) * dSpeed+5;
//     if(dX<0||dX>1000){
//       dX=0;
//       dY=0;
//     }
//	 }
  void show()
  {
  	noStroke();
    fill(200, 235, 255);
    ellipse((float)dX,(float)dY,80,80);
  }
}


	// 255
	// 186, 210, 255
	// 186, 222, 255
	// 186, 235, 255
	// 186, 255, 255
	// 186, 204, 255