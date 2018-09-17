// Neon
/* Se aprecia un disco brillante en el area del fondo que lleva el color azul,
  este color es igual al del fondo del resto de la imágen (blanco), 
  pero se ve mucho mas brillante.

  Al pasar el mouse sobre la imagen el color azul de los discos desaparece,
  y el fondo se ve con el mismo brillo.
*/

PGraphics pgCirc;
boolean circBlue = true;

void setup() {
  size(400, 400, P2D);
  pgCirc = createGraphics(400, 400);
}

void draw() {
  background(255);
  float d = width*0.32;
  float xm = width*0.25;
  
  color cb = color(0,0,0);
  color cn = color(0,0,255);
  
  pgCirc.beginDraw();
  circles(width*0.5, height*0.25, d, cb);
  circles(width*0.75, height*0.5, d, cb);
  circles(width*0.5, height*0.75, d, cb);
  circles(width*0.25, height*0.5, d, cb);
  pgCirc.endDraw();
  
  pgCirc.loadPixels();
  
  if (circBlue){
    blueNeon(xm, cb, cn);
  }
  
  pgCirc.updatePixels();
  
  image(pgCirc, 0, 0);
}

void circles(float xc, float yc, float d, color c) {
  pgCirc.smooth(2);
  pgCirc.noFill();
  pgCirc.stroke(c);
  pgCirc.strokeWeight(d*0.039);
  float step = d/4;
  for (int i = 0; i < 4; i++) {
    pgCirc.ellipse(xc, yc, d - i*step, d - i*step);
  }
}

void blueNeon(float xm, color cb, color cn){
  for (int i = 0; i < pgCirc.width; i++) {
    for (int j = 0; j < pgCirc.height; j++) {
      int pos = i + j*pgCirc.width;
      float dp = dist(pgCirc.width/2, pgCirc.height/2, i, j);
      
      if (pgCirc.pixels[pos] == cb && dp <= xm){
        pgCirc.pixels[pos] = cn;
      }
    }
  }
} 

void mouseMoved() {
  if (dist(mouseX,mouseY,width/2,height/2) < width/2){
    circBlue = false;
  }else{
    circBlue = true;
  }
}
