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

void setup() {
  size(400, 526);
  minim = new Minim(this);  
  player = minim.loadFile("misiro.mp3 "); 
  player.play(); 
 
}
  
  void draw() {
  background(0);
  img = loadImage("usi.jpg");
  image(img, 0, 0, width, height/2);

img = loadImage("titinasi.jpg");
  image(img, 0, 263, width, height/2);
  
  if(mousePressed) {
    img = loadImage("titi.jpg");
  image(img, 0, 263, width, height/2);

  minim = new Minim(this);  
  player = minim.loadFile("mo-.mp3"); 
  player.play(); 


 img = loadImage("usi2.jpg");
  image(img, 0, 0, width, height/2);
  y=y+1;

}
if(y>10)
{ img = loadImage("usi4.jpg");
  image(img, 0, 0, width, height/2);
}

}
void serialEvent(Serial p){
  if(myPort.available()>3){
    x1=myPort.read();
    x2=myPort.read();
    x3=myPort.read();
    x4=myPort.read();
  }
}
