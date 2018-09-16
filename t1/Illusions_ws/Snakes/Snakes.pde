// Rotating Snakes (Serpientes giratorias)
/* Evoca una experiencia perceptual de movimiento ilusorio. 

  Es una ilusion de deriva periférica; cualquier parte de la figura que esté 
  en el centro de nuestro campo visual parece inmóvil (como de hecho lo es), 
  mientras que las partes vistas en nuestra visión periférica parecen moverse.
*/

int frame = 0;
boolean fondo = false;

void setup (){
  size(600, 600, P2D);
}

void draw (){
  background(100);
  float w = width;
  float h = height;
  
  circles (w/6, h/6);
  circles (w*0.5, h/6);
  circles (w-w/6, h/6);
  circles (w/6, h*0.5);
  circles (w*0.5, h*0.5);
  circles (w-w/6, h*0.5);
  circles (w/6, h-h/6);
  circles (w*0.5, h-h/6);
  circles (w-w/6, h-h/6);
  
  circles (w/3, h/3);
  circles (w-w/3, h/3);
  circles (w/3, h-h/3);
  circles (w-w/3, h-h/3);
}

void circles(float xc, float yc){
  smooth();
  noStroke();
  int c1 = color(0,0,0);
  int c2 = color(0,103,248);
  int c3 = color(255,255,255);
  int c4 = color(212,216,0);
  int[] tone = {c1,c2,c3,c4};
  int toneSel = 0;
  int t = 72;
  float stepA = TWO_PI/t;
  float stepC = 0;
  
  for (int c = 0; c < 9; c++) {
    for (int i = 0; i < t; i++) {
      toneSel = (toneSel<3)? (toneSel+=1):0;
      
      fill(tone[toneSel]);
      arc(xc, yc, 200-stepC, 200-stepC, stepA*i, stepA*(i+1));
    }
    stepC *= 0.9;
    stepC += 30;
    toneSel = (toneSel<3)? (toneSel+=1):0;
  }
}
