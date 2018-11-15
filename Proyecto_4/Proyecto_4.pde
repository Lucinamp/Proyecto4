/*Cada figura toma sus colores de algun pixel en la pantalla, con distintas opacidades,
El color del rectangulo es tambien tomado de un pixel.En La pantalla dos se utiliza el mismo metodo para agregar una capa de color, con una opacidad muy pequeña,
por lo que puede parecer opaco y con poco color en algunos ambientes donde se utilice */
import gab.opencv.*;
import processing.video.*;
import java.awt.*;

Capture video;
OpenCV opencv;
int tamano=15;
int columnas = width/tamano;
int filas = height/tamano;
int n= 1;

P2 p2;
P1 p1;
void setup() {
  size(960, 720);
p2 = new P2();
p1 = new P1();

  video = new Capture(this, 960/2, 720/2); 
  opencv = new OpenCV(this, 960/2, 720/2);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  
 
  video.start();
  
}

void draw() {
  scale(2);
opencv.loadImage(video);
 image(video, 0, 0 );
p1.display();
}
void captureEvent(Capture c) {
  c.read();
}
