// Cambio de color
/* Cambio de color debido al cambio de contraste, la banda del centro es de un tono 
  gris constante, pero se ve afectada por el contraste con el fondo, pareciendo que 
  tiene un cambio de color que no existe.
  
  Pase el mouse sobre la imagen para quitar la gradación del fondo
*/

int limit;

void setup(){
  size(512,300,P2D);
  frameRate(60);
  limit = width;
}
void draw(){
  background(255);
  int w = width;
  int h = height;
  
  for (int i = 0; i <= w; i++) {
    float inter = map(i, 0, limit, 0, 1);
    color c = lerpColor(30, 225, inter);
    stroke(c);
    line(i, 0, i, h);
  }
  noStroke();
  fill(128);
  rect(50,120,412,60);
}

void mouseMoved() {
  if (mouseX>0 && mouseX<width){
    limit = mouseX;
  }else{
    limit = width;
  }
}
