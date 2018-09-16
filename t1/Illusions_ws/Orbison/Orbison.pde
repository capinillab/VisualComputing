// Ilusión de Orbison
/* El cuadro rojo aparece distorsionado, aunque no lo este, 
  al igual que el rectángulo que contiene la imagen, aunque tampoco lo esté.
  
  Pase el mouse sobre la imagen para que desaparezcan las lineas azules.
*/

boolean triang = true;

void setup(){
  size(400, 270, P2D);
}

void draw(){
  background(255);
  noFill();
  smooth(2);
  float w = width;
  float h = height;
  int s = 10;
  float d = (w>h)? (h*0.35):(w*0.35);
  
  stroke(0,140,255);
  strokeWeight(w*0.02);
  quad(0,0, w,0, w,h, 0,h);
  
  if(triang){
    triangles(w, h, s);
  }
  float x = w*0.5;
  float y = h*0.5;
  
  stroke(255,0,0);
  strokeWeight(w*0.01);
  quad(x,y+d, x+d,y, x,y-d, x-d,y);
  
}

void triangles(float w, float h, int s){
  stroke(0,140,255);
  strokeWeight(w*0.01);
  float stepW = w/(s*0.63);
  float stepH = h/s;
  float d = -stepW/2;
  
  for(int i=1; i<s*1.5; i++){
    triangle(d, h/2-stepH*i, d, h/2+stepH*i, d+stepW*i, h/2);
  }
}

void mouseMoved() {
  if (dist(mouseX,mouseY,width/2,height/2) < width/2){
    triang = false;
  }else{
    triang = true;
  }
}
