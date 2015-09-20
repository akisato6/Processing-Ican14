PImage img;
import ddf.minim.*;
import processing.serial.*;
Serial myPort;
Minim minim; 
AudioPlayer player;

 int x=0;
 int y;
 int timeCounter = 0; //draw()nokaisuu
  int limitTime = 60; //seigennzikann

void setup() {
  size(800, 526);
 myPort=new Serial(this,"COM3",9600);
  minim = new Minim(this);  
  player = minim.loadFile("Zelda.mp3"); 
  player.play();
  player.loop();
  }
  
  void draw() {
    background(252);
  img = loadImage("usi.jpg");
  image(img, 0, 0, width/2, height/2);

  img = loadImage("titinasi.jpg");
  image(img, 0, 263, width/2, height/2);
  
  img = loadImage("mami1.jpg");
  image(img, 400, 263, width/2, height/2);

if(limitTime>0)
{
    timeCounter += 1;
  if(timeCounter%6==0)
 {
   limitTime -= 1;
 }
  fill(150);
 textSize(50);
  text("Limit:",400,50);
  text(nf(limitTime, 2), 580, 50);
  text("Milking Liquid:",400,100,400,100);
  text(nf(x,2),500,220);
}
 
 if(limitTime<1)
{
    img = loadImage("saisyuukai.jpg"); 
  image(img, 0, 0, width, height);
 }
  if(w>10)
  { 
  minim = new Minim(this);  
  player = minim.loadFile("mo-.mp3"); 
  player.play(); 

 img = loadImage("titi.jpg");
 image(img, 0, 263, width/2, height/2);

 img = loadImage("usi2.jpg");
  image(img, 0, 0, width/2, height/2);
 
  y=y+1;
}

if(y>10)
{ 
  img = loadImage("mami2.jpg");
  image(img, 400, 263, width/2, height/2);
  }
  
if(y>20)
{
  img = loadImage("mami3.jpg");
  image(img, 400, 263, width/2, height/2);
}

  }

void serialEvent(Serial p)
{
  if(myPort.available()>0)
  { w=myPort.read();
    x=x+1+myPort.read();
  }
  if(myPort.available()<0)
  {
    x=0;
}
}

