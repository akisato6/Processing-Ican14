PImage img;
import ddf.minim.*;
import processing.serial.*;
Serial myPort;
Minim minim; 
AudioPlayer player;

 int x1;
 int x2;
 int x3;
 int x4;
 int y;
 int timeCounter = 0; //draw()nokaisuu
  int limitTime = 60; //seigennzikann
  int []a;
  int []b;
  int []c;
  int []d;

  int suma,sumb,sumc,sumd;
  int i;
  int sum;

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
  if(timeCounter%10==0)
 {
   limitTime -= 1;
 }
  fill(150);
 textSize(50);
  text("Limit:",400,50);
  text(nf(limitTime, 2), 580, 50);
  text("Milking Liquid:",400,100,400,100);
  text(nf(sum,2),500,220);
}
 
 if(limitTime<1)
{
    img = loadImage("saisyuukai.jpg"); 
  image(img, 0, 0, width, height);
 }
  
  if(x1>50&&x2>50&&x3>50&&x4>50)
  {
    suma = 0;
    sumb = 0;
    sumc = 0;
    sumd = 0;
    
    a = new int[100];
    b = new int[100];
    c = new int[100];
    d = new int[100];

    for (i=0;i<100; ++i){
  
  a[0] = 0;
  b[0] = 0;
  c[0] = 0;
  d[0] = 0;
  a[i] = x1;
  b[i] = x2;
  c[i] = x3;
  d[i] = x4;
  suma = a[i]+suma;
  sumb = b[i]+sumb;
  sumc = c[i]+sumc;
  sumd = d[i]+sumd;
  sum=(suma+sumb+sumc+sumd)/100;
}
    
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
  if(myPort.available()>3)
  {
    x1=myPort.read();
    x2=myPort.read();
    x3=myPort.read();
    x4=myPort.read();
  }
}
