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
  // myPort=new Serial(this,"COM3",9600);
  minim = new Minim(this);  //bgndate wo tukau
  player = minim.loadFile("Zelda.mp3"); 
  player.play();
  player.loop();
}

 void draw() 
    {
 background(20,200,30);
  textSize(50);
  
  img = loadImage("haikei.jpg"); 
  image(img, 0, 0, 320, height);
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
    text("2:",105,650); 
    rect(100,620,30,-20*y2) ;
    
     fill(0,255,0);
     text("3:",175,650); 
     rect(170,620,30,-20*y3) ;
          
     fill(0,255,255);
     text("4:",245,650);
      rect(240,620,30,-20*y4) ;
    
   
    fill(252,252,252); 
    //ellipse(880, 170, 500, 300);
    rect(350,30,370,250);
    textSize(40);
     fill(0,0,0); 
    text("Total Score:",390,130);   
  text(nf(score, 2), 630, 130);
    text("Rank:",420,230);
    
  if(score<60)
    {
      if(l==0)
      {
       minim = new Minim(this);  
          player = minim.loadFile("umakusibotte.mp3"); 
          player.play();
      l=l+1;
    } 
          
       text("C",570,230);
      img = loadImage("comment-c.jpg");
     image(img,400,400,280,200);
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
       minim = new Minim(this);  
          player = minim.loadFile("ojouzunanone1.mp3"); 
          player.play();
         l=l+1;
      } 
    text("B",570,230);
     
    img = loadImage("comment-b.jpg");
  image(img,400,400,280,170);
   img = loadImage("B_pic.jpg");
 image(img, 750,0,385, height);
  
    }
       if(score>110) //hyouka A
    {
      if(l==0)
      {
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

    


  void serialEvent(Serial p)
{
  if(myPort.available()>0)
  {
    x=myPort.read();
  }  
}

