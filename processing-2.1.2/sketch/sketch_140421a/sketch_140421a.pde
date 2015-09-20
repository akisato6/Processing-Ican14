import processing.serial.*;
Serial myPort;


 PImage Onimg;
 PImage Offimg;

 int StatusFlag;

 void setup() {
   size(200, 100);
   Onimg = loadImage("On.png");
   Offimg = loadImage("Off.png");
   image(Onimg,50, 20);
   StatusFlag=0;
   myPort=new Serial(this,Serial.list()[0],9600);
 }

 void draw() {

 }
 void mouseClicked(){
   if(mouseX>=50 && mouseX<=130 && mouseY>=20 && mouseY<=60){
     if(StatusFlag==0){
       //Onの処理を実行
      println ("Mouse Click On!!");
       image(Offimg,50, 20);
       StatusFlag=1;
      myPort.write(1);
       }else{
       //Offの処理を実行
      println ("Mouse Click Off!!");
       image(Onimg,50, 20);
       StatusFlag=0;
      myPort.write(0); 
       }
   }
 }


