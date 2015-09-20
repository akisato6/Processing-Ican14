PImage img;
import processing.serial.*;
Serial myPort;
int x=0;
int y1=0;
int y2=0;
int y3=0;
int y4=0;


void setup() {
  size(800, 526);
 myPort=new Serial(this,"COM3",9600);
}

 void draw() {
    background(0);
      img = loadImage("usi.jpg");
  image(img, 0, 0, width/2, height/2);
  
   img = loadImage("0.jpg");
  image(img, 0, 263, width/2, height/2);
  textSize(30);
    text("1:",400,50); 
   text(nf(y1,2),500,50);
     text("2:",400,100); 
   text(nf(y2,2),500,100);
     text("3:",400,150); 
   text(nf(y3,2),500,150);
     text("2:",400,200); 
   text(nf(y4,2),500,200);
   
   
   
  
   if(x==1)
  {
   img = loadImage("1.jpg");
  image(img, 0, 263, width/2, height/2);
  y1=y1+1;
  while(x==1)
  {
  }
  }
   if(x==2)
  {
   img = loadImage("2.jpg");
  image(img, 0, 263, width/2, height/2);
  y2=y2+1;
   while(x==2)
  {
  }
  }
   if(x==3)
  {
   img = loadImage("3.jpg");
  image(img, 0, 263, width/2, height/2);
  y3=y3+1;
   while(x==3)
  {
  }
  }
   if(x==4)
  {
   img = loadImage("4.jpg");
  image(img, 0, 263, width/2, height/2);
  y4=y4+1;
   while(x==4)
  {
  }
  }
 }
  
  void serialEvent(Serial p)
{
  if(myPort.available()>0)
  {
    x=myPort.read();
  }  
}

