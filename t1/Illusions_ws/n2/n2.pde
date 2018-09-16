PGraphics pgCirc;
PImage img;
PGraphics pgCent;
PImage mask;

void setup() {
  size(400, 400, P2D);
  pgCirc = createGraphics(400, 400);
  pgCent = createGraphics(400, 400);
  
  background(255);
  float d = width*0.32;
  float xm = width*0.5;
  color c = color(0,0,0);
  
  pgCirc.beginDraw();
  circles(width*0.5, height*0.25, d, c);
  circles(width*0.75, height*0.5, d, c);
  circles(width*0.5, height*0.75, d, c);
  circles(width*0.25, height*0.5, d, c);
  pgCirc.endDraw();
  img = pgCirc.get();
  
  pgCent.beginDraw();
  center(xm);
  pgCent.endDraw();
  mask = pgCent.get();
  
  //img.mask(mask);
  
}

void draw() {
  background(255);
  //image(pgCirc, 0, 0);
  image(img, 0, 0);
  //image(pgCent, 0, 0);
  //image(mask, 0, 0);
}

void circles(float xc, float yc, float d, color c) {
  pgCirc.smooth();
  pgCirc.noFill();
  pgCirc.stroke(c);
  pgCirc.strokeWeight(d*0.039);
  float step = d/4;
  for (int i = 0; i < 4; i++) {
    pgCirc.ellipse(xc, yc, d - i*step, d - i*step);
  }
}

void center(float d){
  pgCent.background(255);
  color c = color(0);
  pgCent.fill(c);
  pgCent.noStroke();
  pgCent.ellipse(d, d, d, d);
}
