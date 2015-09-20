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
int score=0;
int start=0;

 int timeCounter = 0; //draw()nokaisuu jikannkeisoku
  int limitTime = 30; //seigennzikann  nokorinojikann
void setup(){
   size(1300, 700);
  myPort=new Serial(this,"COM3",9600);
  minim = new Minim(this);  //bgndate wo tukau
  player = minim.loadFile("Zelda.mp3"); 
  player.play();
  player.loop();
}

 void draw() {
   if(start==0){
     img = loadImage("mather.jpg"); 
  image(img, 0, 0, width, height);
  if(x>0)
  {start=1;  
        }
   }
   
    if(start==1){
     img = loadImage("sibori1.jpg"); 
  image(img, 0, 0, width/2, height);
     img = loadImage("sibori2.jpg"); 
  image(img, width/2, 0, width/2, height);
  if(x>3)
  {start=2;  
        }
   }
   
    if(start==2)
    {
   background(0);
      img = loadImage("iiusi.jpg");
  image(img, 0, 0, width/2, height/2); //(x,y,yoko,tate)
  img = loadImage("titinasi.jpg");
  image(img, 0, 350, width/2, height/2);
    img = loadImage("P_pic.jpg");
  image(img, 850,0, width*35/100, height);
  
  textSize(30);
    text("1:",680,150); 
   text(nf(y1,2),730,150);
     text("2:",680,200); 
   text(nf(y2,2),730,200);
     text("3:",680,250); 
   text(nf(y3,2),730,250);
     text("4:",680,300); 
   text(nf(y4,2),730,300);
   
   
   if(limitTime>0)//time seigen no kannsuu
{
    timeCounter += 1;
  if(timeCounter%2==0)    //???
 {
   limitTime -= 1;
 }
  fill(150);
 textSize(50);
  text("Limit",680,50);
  text(nf(limitTime, 2), 700, 105);

while(x==1)
  {
     img = loadImage("titi1.jpg");
  image(img, 0, 350, width/2, height/2);
     if(x==1&&z==0)
      {
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
            y2=y2+1;
            i = ++i;
             minim = new Minim(this);  
            player = minim.loadFile("mo-.mp3"); 
            player.play(); 
          }
    if(x==2&&z==0)
      {
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
        y3=y3+1;
        j = ++j;
         minim = new Minim(this);  
          player = minim.loadFile("mo-.mp3"); 
          player.play(); 
        }
   if(x==3&&z==0)
    {
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
          y4=y4+1;
          k = ++k;
           minim = new Minim(this);  
          player = minim.loadFile("mo-.mp3"); 
          player.play(); 
          }
   if(x==4&&z==0)
    {
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
   //img = loadImage("B_pic.jpg");
  //image(img, 850,0, width*35/100, height);
  
  }
  if(score>30)
{ 
 //  img = loadImage("A_pic.jpg");
 // image(img, 850,0, width*35/100, height);
  
  }
  //if(score>30)
//{
 // img = loadImage("A_pic.jpg");
 // image(img, 850,0, width*35/100, height);
  
//}
 
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
{ background(20,200,30);
  textSize(50);
  
  img = loadImage("haikei.jpg"); 
  image(img, 0, 0, width/4, height);
  fill(255,0,0);
    text("Milk Liquid",20,693);
   strokeWeight(5);
   //line(50,35,220,35);
    textSize(30);
     strokeWeight(3);
    fill(248,162,56);
    text("1:",35,650);
    rect(30,620,30,-20*y1) ;
   
    fill(255,255,0);
    text("2:",65,650); 
    rect(100,620,30,-20*y2) ;
    
     fill(0,255,0);
     text("3:",95,650); 
     rect(170,620,30,-20*y3) ;
          
     fill(0,255,255);
     text("4:",125,650);
      rect(240,620,30,-20*y4) ;
    
   
    fill(252,252,252); 
    //ellipse(880, 170, 500, 300);
    rect(380,30,400,250);
    textSize(50);
     fill(0,0,0); 
    text("Total Score:",390,130);   
  text(nf(score, 2), 670, 130);
    text("Rank:",450,230);
    
  if(score<60)
    {
      if(l==0)
      {
       minim = new Minim(this);  
          player = minim.loadFile("yowwahazukasi.mp3"); 
          player.play();
      l=l+1;
    } 
          
       text("C",650,230);
      //img = loadImage("C-comment.jpg");
      //image(img, 0, 350, width, height/2);
     img = loadImage("C_pic.jpg");
     image(img, 850,0, width*35/100, height);
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
       minim = new Minim(this);  
          player = minim.loadFile("huu-rakushou.mp3"); 
          player.play();
         l=l+1;
      } 
     text("B",650,230);
   // img = loadImage("A-comment.jpg");
  //image(img, 0, 350, width, height/2);
   img = loadImage("B_pic.jpg");
 image(img, 850,0, width*35/100, height);
  
    }
       if(score>110) //hyouka A
    {
      if(l==0)
      {
       minim = new Minim(this);  
          player = minim.loadFile("mouyamechau.mp3"); 
          player.play();
         l=l+1;
       }
         
     text("AA",650,230);
   // img = loadImage("S-comment.jpg");
  image(img, 0, 350, width, height/2);
  img = loadImage("A_pic.jpg");
 image(img, 850,0, width*35/100, height);
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

