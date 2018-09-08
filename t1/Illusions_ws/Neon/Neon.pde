//Neon

PGraphics pg;
PGraphics maskImage;

void setup() {
  size(400, 400, P2D);
  int l = int(random(30));
  float v = width/100;
  color c = color(0, 0, 255, 128);
  
  pg = createGraphics(400, 400); 
  pg.beginDraw();
  lines(l, v);
  pg.endDraw(); 
}
 
void draw() {
  background(128);
  //PImage img = createImage(66, 66, RGB);
  color c = color(0, 0, 255, 128);
  image(pg, 0, 0); 
  circle(c);
}

void lines(int l, float v){
  //pg.background(255);
  pg.stroke(0);
  for (int i = 0; i < l; i++) {
    float a = random(100);
    float b = random(100);
    pg.line(a*v, 0, b*v, 100*v);
    pg.line(0, a*v, 100*v, b*v);
  }
}

void circle(color c){
  float p = width/2;
  noStroke();
  tint(c);
  ellipse(p, p, p/2, p/2);
}
