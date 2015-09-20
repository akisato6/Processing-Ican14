import org.firmata.*;
import cc.arduino.*;

PImage img;
import ddf.minim.*;
import processing.serial.*;
Serial myPort;
Minim minim; 
AudioPlayer player;
 int x;

void setup() {
  size(400, 526);
}
  
  void draw() {
  background(0);
  img = loadImage("usi.jpg");
  image(img, 0, 0, width, height/2);

img = loadImage("titinasi.jpg");
  image(img, 0, 263, width, height/2);
  
  if( mousePressed ) {
    img = loadImage("titi.jpg");
  image(img, 0, 263, width, height/2);

  minim = new Minim(this);  
  player = minim.loadFile("mo-.mp3"); 
  player.play(); 


 img = loadImage("usi2.jpg");
  image(img, 0, 0, width, height/2);
}
}




