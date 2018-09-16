// Waterfall (Cascada)
/*Fije la mirada en cruz central durante al menos 30 segundos. 
  luego haga click sobre la imagen, Observe el efecto posterior del 
  movimiento en la figura en reposo (grilla de puntos).
*/

int frame = 0;
boolean fondo = false;

void setup (){
  size(400, 400, P2D);
}

void draw (){
  background(255);
  float w = width;
  float h = height;
  int t = 12;
  int col = 0;
  float d = w/(3*t);
  
  if (fondo) {
    dots(width, height);
  } else {
    switch(frame){
      case 0:
        circles (w, h, 0, t, col);
        frame = 1;
        break;
      case 1:
        col = (col == 0)? 255:0;
        circles (w, h, d, t, col);
        frame = 2;
        break;
      case 2:
        circles (w, h, 2*d, t, col);
        frame = 0;
        break;
    }
  }
    
  delay(100);
}

void circles(float w, float h, float d, int t, int col){
  background(128);
  smooth();
  noStroke();
  float stepA = TWO_PI/t;
  float stepB = w/t;
  float stepC = 0;
  
  for (int c = 0; c < t; c++) {
    for (int i = 0; i < t; i++) {
      col = (col == 0)? 255:0;
      
      fill(col);
      arc(w/2, h/2, w-stepC, h-stepC, stepA*i, stepA*(i+1));
    }
    stepC += stepB;
    stepC -= d;
    d = 0;
    col = (col == 0)? 255:0;
  }
  
  fill(0,0,255);
  ellipse(w/2, h/2, w/t, w/t);
  stroke(255,0,0);
  strokeWeight(3);
  line(w/2, h/2+7, w/2, h/2-7);
  line(w/2+7, h/2, w/2-7, h/2);
}

void dots(float w, float h) {
  background(255);
  strokeWeight(w*0.01);
  stroke(0);
  float stepW = w/10;
  float stepH = h/10;
  
  for (int i = 0; i < w; i+=stepW) {
    for (int j = 0; j < h; j+=stepH) {
      point(i+stepW/2, j+stepH/2);
    }
  }
}

// Interacción
void mouseClicked() {
  if (fondo) {
    fondo = false;
  } else {
    fondo = true;
  }
}
