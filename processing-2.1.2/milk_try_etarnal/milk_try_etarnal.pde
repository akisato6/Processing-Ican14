PImage img;
import ddf.minim.*;
import processing.serial.*;
Serial myPort;
Minim minim; 
AudioPlayer player;
int x=0;
int y1=0;
int y2=0;
int y3=0;
int y4=0;
int z=0;
int i = 0;
int j = 0;
int k = 0;
int l = 0;
int a,b,c,d,e = 0;
int score=0;
int start=0;

 int timeCounter = 0; //draw()nokaisuu jikannkeisoku
  int limitTime = 30; //seigennzikann  nokorinojikann
void setup(){
   size(1100, 700);
  myPort=new Serial(this,"COM3",9600);
  minim = new Minim(this);  //bgndate wo tukau
  player = minim.loadFile("Zelda.mp3"); 
  player.play();
  player.loop();
}

 void draw() 
    {
       if(start==0)
       {
       img = loadImage("mather.jpg"); 
        image(img, 0, 0, width, height);
        if(x>0)
        {start=1;}
       }
   
    if(start==1)
    {
     img = loadImage("sibori1.jpg"); 
  image(img, 0, 0, width/2, height);
     img = loadImage("sibori2.jpg"); 
  image(img, width/2, 0, width/2, height);
  if(x>3)
  {start=2;}
     }
   
    if(start==2)
    {
   background(0);
      img = loadImage("iiusi.jpg");
  image(img, 0, 0, width/2, height/2); //(x,y,yoko,tate)
  img = loadImage("titinasi.jpg");
  image(img, 0, 350, width/2, height/2);
    img = loadImage("P_pic.jpg");
  image(img, 750,0, 385, height);
  
  
   line(550,175,750,175);
   fill(0,255,250);
  textSize(30);
     img = loadImage("sannkaku.jpg");
  image(img, 570,168, 60, 50);
   text(nf(y1,2),650,200);
    img = loadImage("maru.jpg");
  image(img, 574,217, 60, 50);
   text(nf(y2,2),650,250);
      img = loadImage("nizyuumaru.jpg");
  image(img, 572,268, 60, 50);
   text(nf(y3,2),650,300);
      img = loadImage("hosi.jpg");
  image(img, 570,315, 60, 50);
   text(nf(y4,2),650,350);
   
   
   if(limitTime>0)//time seigen no kannsuu
{
    timeCounter += 1;
  if(timeCounter%2==0)    //???
 {
   limitTime -= 1;
 }
  fill(150);
 textSize(50);
  text("Limit",570,50);
   text("Time",590,105);
  text(nf(limitTime,2),610,160);

while(x==1)
  {
     img = loadImage("titi1.jpg");
  image(img, 0, 350, width/2, height/2);
     if(x==1&&z==0)
      {
       img = loadImage("iiusi1.jpg");
  image(img, 0, 0, width/2, height/2); 
         minim = new Minim(this);  
          player = minim.loadFile("mo-.mp3"); 
          player.play(); 
       img = loadImage("titi1.jpg");
       image(img, 0, 350, width/2, height/2);
        y1=y1+1;
        z=1;
       }
  }
 
 while(x==2)
  {
     img = loadImage("titi2.jpg");
  image(img, 0, 350, width/2, height/2);
        if(i == 0)
          {
            img = loadImage("iiusi2.jpg");
  image(img, 0, 0, width/2, height/2); 
            y2=y2+1;
            i = ++i;
             minim = new Minim(this);  
            player = minim.loadFile("mo-.mp3"); 
            player.play(); 
          }
    if(x==2&&z==0)
      {
        img = loadImage("iiusi2.jpg");
  image(img, 0, 0, width/2, height/2); 
       img = loadImage("titi2.jpg");
        image(img, 0, 350, width/2, height/2);
        y2=y2+1;
        z=1;
      }
  }
 
 while(x==3)
  {
     img = loadImage("titi3.jpg");
  image(img, 0, 350, width/2, height/2);
     if(j == 0)
       {
         img = loadImage("iiusi3.jpg");
  image(img, 0, 0, width/2, height/2); 
        y3=y3+1;
        j = ++j;
         minim = new Minim(this);  
          player = minim.loadFile("mo-.mp3"); 
          player.play(); 
        }
   if(x==3&&z==0)
    {
      img = loadImage("iiusi3.jpg");
  image(img, 0, 0, width/2, height/2); 
      img = loadImage("iiusi.jpg");
  image(img, 0, 0, width/2, height/2); 
     img = loadImage("titi3.jpg");
      image(img, 0, 350, width/2, height/2);
      y3=y3+1;
      z=1;
       minim = new Minim(this);  
          player = minim.loadFile("mo-.mp3"); 
          player.play(); 
    }
  }
 
while(x==4)
  {
     img = loadImage("titi4.jpg");
      image(img, 0, 350, width/2, height/2);
         if(k == 0)
         {
           img = loadImage("iiusi4.jpg");
  image(img, 0, 0, width/2, height/2); 
          y4=y4+1;
          k = ++k;
           minim = new Minim(this);  
          player = minim.loadFile("mo-.mp3"); 
          player.play(); 
          }
   if(x==4&&z==0)
    {
      img = loadImage("iiusi4.jpg");
  image(img, 0, 0, width/2, height/2); 
       img = loadImage("titi4.jpg");
      image(img, 0, 350, width/2, height/2);
      y4=y4+1;
      z=1;
       minim = new Minim(this);  
          player = minim.loadFile("mo-.mp3"); 
          player.play(); 
    }
  }
   score=y1+2*y2+3*y3+4*y4;
  if(score>15)
{ 
  if(d==0){
    
   minim = new Minim(this);  
          player = minim.loadFile("iityousi.mp3"); 
          player.play();
   //img = loadImage("B_pic.jpg");
  //image(img, 850,0, width*35/100, height);
  d = 1;
  }
  }
  if(score>30)
{ 
  if(a == 0){
   minim = new Minim(this);  
          player = minim.loadFile("iikanji.mp3"); 
          player.play();
 //  img = loadImage("A_pic.jpg");
 // image(img, 850,0, width*35/100, height);
     a=1;  
 }
  }
  if(score>70)
{
    if(b == 0)
   { 
  minim = new Minim(this);  
          player = minim.loadFile("iiwayo.mp3"); 
          player.play();
 // img = loadImage("A_pic.jpg");
 // image(img, 850,0, width*35/100, height);
  b = 1 ; 
 }
}
 
 if(score>110)
{
  if(c == 0)
  {
   minim = new Minim(this);  
          player = minim.loadFile("umaaai.mp3"); 
          player.play();
 // img = loadImage("A_pic.jpg");
 // image(img, 850,0, width*35/100, height);
    c = 1;  
}
}
    if(z==1&&x==0)
    { z=0;}

    if(i==1&&x==0)
    { i=0;}

    if(j==1&&x==0)
    { j=0;}

    if(k==1&&x==0)
    { k=0;}

 }
 
 if(limitTime<1)
{
   background(20,200,30);
  textSize(50);
  
  img = loadImage("haikei.jpg"); 
  image(img, 0, 0, 320, height);
 
   strokeWeight(5);
   //line(50,35,220,35);
    textSize(30);
     strokeWeight(3);
    
    img = loadImage("sannkaku2.jpg");
  image(img, 20,620, 60, 50);
    fill(248,162,56);
    rect(30,620,30,-20*y1) ;
   
   
   img = loadImage("maru2.jpg");
  image(img, 90,622, 60, 50);
    fill(255,255,0);
    rect(100,620,30,-20*y2) ;
    
    img = loadImage("nizyuumaru2.jpg");
  image(img, 163,622, 60, 50);
     fill(0,255,0);
     rect(170,620,30,-20*y3) ;
          
          img = loadImage("hosi2.jpg");
  image(img, 235,618, 60, 50);
     fill(0,255,255);
      rect(240,620,30,-20*y4) ;
    
   
    fill(255,0,0);
    text("Milk Liquid",20,693);
    fill(252,252,252); 
    //ellipse(880, 170, 500, 300);
    rect(350,30,370,250);
    textSize(40);
     fill(0,0,0); 
    text("Total Score:",375,130);   
  text(nf(score, 2), 620, 130);
   textSize(20);
   text("[dL]",660,155);   
    textSize(40);
    text("Rank:",420,230);
    
  if(score<60)
    {
      if(l==0)
      {delay(1000);
       minim = new Minim(this);  
          player = minim.loadFile("umakusibotte.mp3"); 
          player.play();
      l=l+1;
    } 
          
       text("C",570,230);
      img = loadImage("comment-c.jpg");
     image(img,390,400,300,200);
     img = loadImage("C_pic.jpg");
     image(img, 750,0, 385, height);
  }
 // if(score>50&&score<100)
 //   {
 //     if(l==0){
 //       
 //      minim = new Minim(this);  
 //         player = minim.loadFile("maa-yokuganbatta.mp3"); 
 //         player.play();
 //       l=l+1;
 //     } 
 //    text("B",480,230);
 //     //img = loadImage("B-comment.jpg");
 //     //image(img, 0, 350, width, height/2);
 //    img = loadImage("A_pic.jpg");
 //    image(img, 850,0, width*35/100, height);
// 
  //}
  if(score>60&&score<110) // hyouka B
    {
      if(l==0)
      {
        delay(1000);
       minim = new Minim(this);  
          player = minim.loadFile("ojouzunanone1.mp3"); 
          player.play();
         l=l+1;
      } 
    text("B",570,230);
     
    img = loadImage("comment-b.jpg");
  image(img,390,400,300,170);
   img = loadImage("B_pic.jpg");
 image(img, 750,0,385, height);
  
    }
       if(score>110) //hyouka A
    {
      if(l==0)
      {delay(1000);
       minim = new Minim(this);  
          player = minim.loadFile("arigatou.mp3"); 
          player.play();
         delay(2500);
        player = minim.loadFile("usisannuresiiyorosikune1.mp3"); 
          player.play();
         l=l+1;
       }
         
     text("A",570,230);
   // img = loadImage("S-comment.jpg");
 // image(img, 0, 350, width, height/2);
  img = loadImage("A_pic.jpg");
 image(img, 750,0, 385, height);
img = loadImage("kingsakunyuu.jpg");
 image(img,400,400,280,280);
    }
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

