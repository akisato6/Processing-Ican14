PImage img;
 int x = 0;
 int y =213;
 import ddf.minim.*;

Minim minim; 
AudioPlayer player;
 

 
void setup() {
  size(640, 426);

  minim = new Minim(this);  
  player = minim.loadFile("mami.mp3"); 
  player.play(); 



}
 
void draw() {
  background(170);
  img = loadImage("harry.jpg");
  image(img, width/4, height/4, width/2, height/2);

img = loadImage("mami.jpg");
  image(img, 0, 20, 111,150);

img = loadImage("moruhuxoi.jpg");
  image(img, 400, 100, 111,150);

img = loadImage("marukaite.jpg");
  image(img, 100, 100, 111,250);

if( mousePressed ) {
ellipse( mouseX,mouseY,100,100);}

if( keyPressed && keyCode == RIGHT ) {
x += 10;}
if( keyPressed && keyCode == LEFT ) {
x -= 10;}

if( keyPressed && keyCode == DOWN ) {
y += 10;}
if( keyPressed && keyCode == UP ) {
y -= 10;}

ellipse( x, y, 20, 20);


}



